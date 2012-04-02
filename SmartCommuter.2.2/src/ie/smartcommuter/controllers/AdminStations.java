package ie.smartcommuter.controllers;

import ie.smartcommuter.models.Company;
import ie.smartcommuter.models.DatabaseManager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This controller is used to load the Stations
 * Administrator tool.
 * @author Shane Bryan Doyle
 */
public class AdminStations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		DatabaseManager databaseManager = new DatabaseManager();
		databaseManager.openConnection();
		List<Company> companies = databaseManager.getAllCompanies();
		databaseManager.closeConnection();
		
		request.setAttribute("companies", companies);
		
		String address = "adminStations.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
}
