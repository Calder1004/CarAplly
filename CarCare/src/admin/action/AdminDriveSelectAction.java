package admin.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminDriveSelectService;
import admin.vo.AdminDriveSelectBean;
import client.action.Action;
import client.vo.ActionForward;


public class AdminDriveSelectAction implements Action {
	
	// 서비스 접근 함수
	private ArrayList<AdminDriveSelectBean> getAdminDriveSelect() throws Exception {
		AdminDriveSelectService svc = new AdminDriveSelectService();
		return svc.AdminDss();
	}
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		ArrayList<AdminDriveSelectBean> list = getAdminDriveSelect();
		request.setAttribute("list", list);
		list.toString();
		forward = new ActionForward("dashboard.jsp", false);
		
		return forward;
	}
	
}
