package admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductSelectService;
import admin.vo.AdminProductSelectBean;
import client.action.Action;
import client.vo.ActionForward;

public class AdminProductSelectAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		AdminProductSelectService svc = new AdminProductSelectService();
		List<AdminProductSelectBean> prdList = svc.getAdminProductList(); 
		request.setAttribute("prdList",prdList);
		forward = new ActionForward("dashboard.jsp",false);
		return forward;
	}
	

}
