package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.CarListAction;
import vo.ActionForward;


@WebServlet("*.car")
public class CarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		System.out.println("RequestURI: " + RequestURI);
		String contextPath = request.getContextPath();
		System.out.println("ContextPath: " + contextPath);
		String command = RequestURI.substring(contextPath.length());
		System.out.println("Command: " + command);
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/carList.car") || command.equals("/carList")) {
			action = new CarListAction();
			try {
				forward = action.execute(request, response);	
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}

	}
}