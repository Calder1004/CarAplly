package client.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.action.AdminVaildAction;
import client.action.Action;
import client.action.CarListAction;
import client.action.CarListOptionAction;
import client.action.CenterAction;
import client.action.DateAction;
import client.action.KaKaoAction;
import client.action.TestDriveAction;
import client.action.UserAction;
import client.vo.ActionForward;
import admin.action.AdminDeleteAction;
import admin.action.AdminDriveSelectAction;
import admin.action.AdminUpdateAction;
import admin.action.AdminUpdateFormAction;


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
			
		// 관리자 라인-----------------------------------------------------------------
		
		// 관리자 권한 체크 
		if(command.equals("/adminCheck.car") || command.equals("/adminCheck")) {
			action = new AdminVaildAction();
			try {
				forward = action.execute(request, response);	
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		// 관리자 조회
		if(command.equals("/adminSelect.car") || command.equals("/adminSelect")) {
			action = new AdminDriveSelectAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		// 관리자 수정
		if(command.equals("/adminUpdate.car") || command.equals("/adminUpdate")) {
			action = new AdminUpdateAction();
			try {
				forward = action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		// 관리자 수정 조회 폼
		if(command.equals("/adminUpdateForm.car") || command.equals("/adminUpdateForm")) {
			action = new AdminUpdateFormAction();
			try {
				forward = action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(command.equals("/adminDelete.car") || command.equals("/adminDelete")) {
			action = new AdminDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch(Exception e) {
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
