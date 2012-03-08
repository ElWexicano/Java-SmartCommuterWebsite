package ie.smartcommuter.controllers;

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


public class Client extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Station> recentlyViewedStations = new ArrayList<Station>();

	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		String address = "clientHome.jsp";
		
		HttpSession mySession = request.getSession(true);
		recentlyViewedStations = (List<Station>) mySession.getAttribute("recentlyViewedStations");

		request.setAttribute("recentlyViewedStations", recentlyViewedStations);

		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	
}