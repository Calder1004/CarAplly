package admin.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import vo.ActionForward;

public class AdminUpdateAction implements Action {
	
//	public ArrayList<AdminDriveSelectBean> getAdminUpdate() throws Exception{
//		
//	}
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int id = Integer.parseInt(request.getParameter("id"));
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean bean = svc.admUpd(id);
		ActionForward forward = new ActionForward("dashboard.jsp",false);
		return forward;
	}

}
