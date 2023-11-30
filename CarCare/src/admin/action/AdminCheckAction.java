package admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import admin.svc.AdminService;
import vo.ActionForward;

public class AdminCheckAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
        
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminService svc = new AdminService();
        boolean isAdmin = svc.admChc(username, password);
        
        // login check �� ������
        if (isAdmin) {
            HttpSession session = request.getSession(); // ������ ����
            session.setAttribute("userRole", "admin"); // ���ǿ� userRole�� Ű���� admin�� ������
            forward = new ActionForward("dashboard.jsp", true); // isAdmin�� ������ dashboard�ΰ�
        } else {
            forward = new ActionForward("accessdenied.jsp", true); // isAdmin�� �ƴ϶�� accessdenied�ΰ� (�α��ν��н�)
        }

        return forward;
	}

}
