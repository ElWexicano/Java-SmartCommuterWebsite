package ie.smartcommuter.controllers;

import ie.smartcommuter.models.Captcha;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String address = "contact.jsp";
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession mySession = request.getSession(true);
		Captcha myCaptcha = new Captcha();
		myCaptcha.generate();
		
		request.setAttribute("captcha", myCaptcha);
		mySession.setAttribute("captcha", myCaptcha);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	
}
