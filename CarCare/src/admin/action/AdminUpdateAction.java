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
		System.out.println("id:"+id);
		int carId = Integer.parseInt(request.getParameter("carId"));
		System.out.println("carId:" + carId);
		Date date = Date.valueOf(request.getParameter("date"));
		System.out.println("date:"+date);
		String model = request.getParameter("model");
		System.out.println("model:"+model);
		String name = request.getParameter("name");
		System.out.println("name:"+name);
//		int cc = Integer.parseInt(request.getParameter("cc"));
//		System.out.println("cc:"+cc);
//		String color = request.getParameter("color");
//		System.out.println("color:"+color);
//		String grade = request.getParameter("grade");
//		System.out.println("grade:"+grade);
//		int km = Integer.parseInt(request.getParameter("km"));
//		System.out.println("km:"+km);
//		double price = Double.parseDouble(request.getParameter("price"));
//		System.out.println("price:"+price);
		boolean state = Boolean.parseBoolean(request.getParameter("state"));
		System.out.println("state:"+state);
			 
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean bean = new AdminDriveSelectBean();
			bean.setId(id);
			bean.setCarId(carId);
			bean.setDate(date);
			bean.setModel(model);
			bean.setName(name);
//			bean.setCc(cc);
//			bean.setKm(km);
//			bean.setColor(color);
//			bean.setGrade(grade);
//			bean.setPrice(price);
			bean.setState(state);
		boolean result = svc.admUpd(id, bean);
	    if (result) {
            return new ActionForward("dashboard.jsp", false);
        } else {
            return new ActionForward("admindenied.jsp", false);
        }
	}

}
