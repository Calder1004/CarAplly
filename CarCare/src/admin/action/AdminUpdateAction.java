package admin.action;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import client.action.Action;
import client.vo.ActionForward;

public class AdminUpdateAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int carId = Integer.parseInt(request.getParameter("carId"));
		Date date = Date.valueOf(request.getParameter("date"));
		String model = request.getParameter("model");
		String name = request.getParameter("name");
		boolean state = Boolean.parseBoolean(request.getParameter("state"));
	
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean bean = new AdminDriveSelectBean();
			bean.setId(id);
			bean.setCarId(carId);
			bean.setDate(date);
			bean.setModel(model);
			bean.setName(name);
			bean.setState(state);
		boolean result = svc.admUpd(id, bean);
	    if (result) {
            return new ActionForward("dashboard.jsp", false);
        } else {
            return new ActionForward("admindenied.jsp", false);
        }
	}

}
