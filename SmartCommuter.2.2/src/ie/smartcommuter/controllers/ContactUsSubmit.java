package ie.smartcommuter.controllers;

import ie.smartcommuter.models.Captcha;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * This controller is used by the Contact Us
 * screen to submit user feedback.
 * @author Shane Bryan Doyle
 */
public class ContactUsSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String address = "contact.jsp";
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String captchaValue = request.getParameter("captcha");
		HttpSession mySession = request.getSession(true);
		Captcha myCaptcha = (Captcha) mySession.getAttribute("captcha");
		
		if(myCaptcha.getAnswer().equals(captchaValue)){
			address = "index.jsp";
		} else {
			myCaptcha.generate();
			
			request.setAttribute("captcha", myCaptcha);
			mySession.setAttribute("captcha", myCaptcha);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
}
