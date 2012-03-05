package ie.smartcommuter.controllers;

import ie.smartcommuter.client.RealTimeClient;
import ie.smartcommuter.models.BeanUtils;
import ie.smartcommuter.models.Station;
import ie.smartcommuter.models.StationData;

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
	
	List<Station> recentlyViewedStations = new ArrayList<Station>();
	
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String address = "details.jsp";
		Integer stationId = new Integer(request.getParameter("stationid"));

		if(stationId!=null){
			Station station = BeanUtils.getStationDetails(stationId);

            List<StationData> stationData = new ArrayList<StationData>();
            StationData temp = new StationData();
            
            temp.setDestination("Destination");
            temp.setExpectedTime("11:18");
            temp.setRoute("Route 2");
            
            for(int i = 0; i < 10; i++) {
            	stationData.add(temp);
            }
                
			// Next get the real time data for the station!

//            StationData stationData = 
//            		RealTimeClient.getStationData(RealTimeClient.getStub(),"", 
//            				station.getApiCode());
			
			HttpSession mySession = request.getSession(true);
			recentlyViewedStations = (List<Station>) mySession.getAttribute("recentlyViewedStations");
			if(recentlyViewedStations==null){
				recentlyViewedStations = new ArrayList<Station>();
			}
			recentlyViewedStations = BeanUtils.addToRecentlyViewed(station, recentlyViewedStations);
			mySession.setAttribute("recentlyViewedStations", recentlyViewedStations);
			
            station.setArrivals(stationData);
            station.setDepartures(stationData);
			request.setAttribute("station", station);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);		
	}
}
