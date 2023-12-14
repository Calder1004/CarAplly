package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import client.action.Action;
import client.vo.ActionForward;

public class AdminUpdateFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		String idParameter = request.getParameter("id");
		int id = (idParameter != null && !idParameter.isEmpty()) ? Integer.parseInt(idParameter) : 0;

        AdminUpdateService svc = new AdminUpdateService();
        
        //id값 얻어서 조회
        AdminDriveSelectBean ModifyList = svc.getAdminData(id);
        
        request.setAttribute("ModifyList", ModifyList);
        
        forward = new ActionForward("dashboard.jsp", false);

        return forward;
	}
	
	
}
