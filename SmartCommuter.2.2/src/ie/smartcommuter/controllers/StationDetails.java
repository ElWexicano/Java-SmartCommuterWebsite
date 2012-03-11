package ie.smartcommuter.controllers;

import ie.smartcommuter.client.RealTimeClient;
import ie.smartcommuter.models.BeanUtils;
import ie.smartcommuter.models.Station;
import ie.smartcommuter.service.RealTimeStub.StationData;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StationDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Station> recentlyViewedStations = new ArrayList<Station>();
	
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String address = "clientStationDetails.jsp";
		Integer stationId = new Integer(request.getParameter("stationid"));

		if(stationId!=null){
			Station station = BeanUtils.getStationDetails(stationId);

            List<StationData> stationData = null;
			try {
				stationData = RealTimeClient.getStationData(RealTimeClient.getStub(),
						BeanUtils.getStationAPIServiceType(station), 
						station.getApiCode());
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(stationData!=null){
				
				List<StationData> arrivals = new ArrayList<StationData>();
				List<StationData> departures = new ArrayList<StationData>();
				for(StationData sd : stationData) {
					
					if(sd.getIsArrivalOrDeparture().equals("Arrival")) {
						arrivals.add(sd);
					} else if(sd.getIsArrivalOrDeparture().equals("Departure")) {
						departures.add(sd);
					}
				}
				station.setArrivals(arrivals);
				station.setDepartures(departures);
			}
			
			HttpSession mySession = request.getSession(true);
			recentlyViewedStations = (List<Station>) mySession.getAttribute("recentlyViewedStations");
			if(recentlyViewedStations==null){
				recentlyViewedStations = new ArrayList<Station>();
			}
			recentlyViewedStations = BeanUtils.addToRecentlyViewed(station, recentlyViewedStations);
			mySession.setAttribute("recentlyViewedStations", recentlyViewedStations);
			request.setAttribute("station", station);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);		
	}
}
