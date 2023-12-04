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
		request.setCharacterEncoding("UTF-8");
				int id = Integer.parseInt(request.getParameter("id"));
				Date date = Date.valueOf(request.getParameter("date"));
				String model = request.getParameter("model");
				String name = request.getParameter("name");
				int cc = Integer.parseInt(request.getParameter("cc"));
				String color = request.getParameter("color");
				String grade = request.getParameter("grade");
				int km = Integer.parseInt(request.getParameter("km"));
				double price = Double.parseDouble(request.getParameter("price"));
				boolean state = Boolean.parseBoolean(request.getParameter("state"));

				/*
				 * System.out.println(id); System.out.println(date); System.out.println(cc);
				 * System.out.println(model); System.out.println(color);
				 * System.out.println(grade); System.out.println(price);
				 * System.out.println(state);
				 */
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean bean = new AdminDriveSelectBean();
			bean.setId(id);
			bean.setDate(date);
			bean.setModel(model);
			bean.setName(name);
			bean.setCc(cc);
			bean.setColor(color);
			bean.setGrade(grade);
			bean.setKm(km);
			bean.setPrice(price);
			bean.setState(state);
		boolean result = svc.admUpd(id, bean);
	    if (result) {
            return new ActionForward("dashboard.jsp", false);
        } else {
            return new ActionForward("admindenied.jsp", false);
        }
	}

}
