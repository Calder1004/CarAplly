package admin.action;

import java.sql.Date;
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
		AdminDriveSelectBean bean = new AdminDriveSelectBean();
			bean.setDate(Date.valueOf(request.getParameter("reservation_date")));
			bean.setName(request.getParameter("name"));
			bean.setCc(Integer.parseInt(request.getParameter("cc")));
			bean.setColor(request.getParameter("color"));
			bean.setGrade(request.getParameter("grade"));
			bean.setPrice(Double.parseDouble(request.getParameter("price")));
			bean.setState(Boolean.parseBoolean(request.getParameter("state")));
		boolean result = svc.admUpd(id, bean);
	    if (result) {
            return new ActionForward("dashboard.jsp", false);
        } else {
            return new ActionForward("admindenied.jsp", false);
        }
	}

}
