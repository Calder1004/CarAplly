package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminBrandWriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		String name = request.getParameter("name");
		
		if (name != null && !name.isEmpty()) {
		System.out.println(name);
		// ¼­ºñ½º
		AdminProductWriteService svc = new AdminProductWriteService();
		svc.insertBrand(name);
		} else {
			System.out.println("erorr");
		}
		forward = new ActionForward("dashboard.jsp", false);
		return forward;
	}
	
}
