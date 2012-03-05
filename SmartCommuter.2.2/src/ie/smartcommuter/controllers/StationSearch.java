package ie.smartcommuter.controllers;

import ie.smartcommuter.models.BeanUtils;
import ie.smartcommuter.models.Station;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StationSearch extends HttpServlet {

	List<Station> recentlyViewedStations = new ArrayList<Station>();
	List<Station> searchResultStations = new ArrayList<Station>();
	
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String address = "results.jsp";
		String stationName = (String) request.getParameter("stationname");
		Boolean searchBus = request.getParameter("busstation") != null ? true : false;
		Boolean searchRail = request.getParameter("railstation") != null ? true : false;
		Boolean searchTram = request.getParameter("tramstation") != null ? true : false;

		searchResultStations = BeanUtils.SearchStations(stationName, searchBus, searchRail, searchTram);
		
		HttpSession mySession = request.getSession(true);
		recentlyViewedStations = (List<Station>) mySession.getAttribute("recentlyViewedStations");
		
		request.setAttribute("searchedStation", stationName);
		request.setAttribute("recentlyViewedStations", recentlyViewedStations);
		request.setAttribute("searchResultStations", searchResultStations);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	
}
