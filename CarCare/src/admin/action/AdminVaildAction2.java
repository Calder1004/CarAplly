package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.svc.AdminVaildService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminVaildAction2 implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
        
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminVaildService svc = new AdminVaildService();
        boolean isAdmin = svc.admChc(username, password);
        
        // login check 가 끝나고
        if (isAdmin) {
            HttpSession session = request.getSession(); // 세션을 얻어옴
            session.setAttribute("userRole", "admin"); // 세션에 userRole을 키로한 admin을 내려줌
            forward = new ActionForward("dashboard.jsp", true); // isAdmin이 맞으면 dashboard로감
        } else {
            forward = new ActionForward("accessdenied.jsp", true); // isAdmin이 아니라면 accessdenied로감 (로그인실패시)
        }

        return forward;
	}

}
