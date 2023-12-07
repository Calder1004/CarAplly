package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminModelWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// param 받음
		String carBrandIdParam = request.getParameter("carBrandId");
		// carBrandId 초깃값 설정
		int carBrandId = 0;
		String name = request.getParameter("name");
		
		
		
		if(carBrandIdParam != null && !carBrandIdParam.isEmpty()) {
		  carBrandId = Integer.parseInt(carBrandIdParam);
		}
		
		
		AdminProductWriteService svc = new AdminProductWriteService();
		svc.insertModel(carBrandId,name);
		
		forward = new ActionForward("dashboard.jsp", false);
		return forward;
	}

}
