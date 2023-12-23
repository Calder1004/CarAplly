package admin.action;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminCreateService;
import admin.vo.AdminUserBean;
import client.action.Action;
import client.vo.ActionForward;
import util.WrapperConverter;

public class AdminCreatedAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    ActionForward forward = null;
        String username = WrapperConverter.parseString.apply(request.getParameter("username"));
        String password = WrapperConverter.parseString.apply(request.getParameter("password"));
        System.out.println(username);
        System.out.println(password);
        AdminUserBean bean = new AdminUserBean(username, password);

        System.out.println(bean.toString());
        
        AdminCreateService svc = new AdminCreateService();
        
        svc.admCreated(bean);
        forward = new ActionForward("dashboard.jsp", false);
		return forward;
	}
	
}
