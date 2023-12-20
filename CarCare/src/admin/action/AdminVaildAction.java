package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.svc.AdminVaildService;
import client.action.Action;
import client.vo.ActionForward;
import util.WrapperConverter;

public class AdminVaildAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
        
		String username = WrapperConverter.parseString.apply(request.getParameter("username"));
		String password = WrapperConverter.parseString.apply(request.getParameter("password"));

        AdminVaildService svc = new AdminVaildService();
        boolean isAdmin = svc.admChc(username, password);
        
        // login check 가 끝나고
        if (isAdmin) {
            HttpSession session = request.getSession(); 
            // 세션을 얻어옴
            session.setAttribute("userRole", "admin"); // 세션에 userRole을 키로한 admin을 내려줌
            forward = new ActionForward("dashboard.jsp", true); // isAdmin이 맞으면 dashboard로감
        } else {
            forward = new ActionForward("accessdenied.jsp", true); // isAdmin이 아니라면 accessdenied로감 (로그인실패시)
        }

        return forward;
	}

}
