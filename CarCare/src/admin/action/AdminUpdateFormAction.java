package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import vo.ActionForward;

public class AdminUpdateFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		String idParameter = request.getParameter("id");
		int id = (idParameter != null && !idParameter.isEmpty()) ? Integer.parseInt(idParameter) : 0;

        AdminUpdateService svc = new AdminUpdateService();
        AdminDriveSelectBean bean = svc.getAdminData(id);
        
        request.setAttribute("bean", bean);
        
        forward = new ActionForward("dashboard.jsp", false);

        return forward;
	}
	
	
}
