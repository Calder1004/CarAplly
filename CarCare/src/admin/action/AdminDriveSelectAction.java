package admin.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import admin.svc.AdminDriveSelectService;
import admin.vo.AdminDriveSelectBean;
import vo.ActionForward;


public class AdminDriveSelectAction implements Action {
	
	// ���� ���� �Լ�
	private ArrayList<AdminDriveSelectBean> getAdminDriveSelect() throws Exception {
		AdminDriveSelectService svc = new AdminDriveSelectService();
		return svc.AdminDss();
	}
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		ArrayList<AdminDriveSelectBean> list = getAdminDriveSelect();
		request.setAttribute("list", list);
		forward = new ActionForward("dashboard.jsp", false);
		
		return forward;
	}
	
}