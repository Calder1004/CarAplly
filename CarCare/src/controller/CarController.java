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
import action.CarListOptionAction;
import action.CenterAction;
import action.DateAction;
import action.KaKaoAction;
import action.TestDriveAction;
import action.UserAction;
import admin.action.AdminCheckAction;
import admin.action.AdminDriveSelectAction;
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
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

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
		
		if(command.equals("/carListOption.car") || command.equals("/carListOption")) {
			action = new CarListOptionAction();
			try {
				forward = action.execute(request, response);	
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/center.car") || command.equals("/center")) {
			action = new CenterAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/date.car") || command.equals("/date")) {
			action = new DateAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/user.car") || command.equals("/user")) {
			action = new UserAction();
			try {	
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}	
		
		if(command.equals("/kakao.car") || command.equals("/kakao")) {
			action = new KaKaoAction();
			try {	
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/testdrive.car") || command.equals("/testdrive")) {
			action = new TestDriveAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
			
		if(command.equals("/adminCheck.car") || command.equals("/adminCheck")) {
			action = new AdminCheckAction();
			try {
				forward = action.execute(request, response);	
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/adminSelect.car") || command.equals("/adminSelect")) {
			action = new AdminDriveSelectAction();
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
