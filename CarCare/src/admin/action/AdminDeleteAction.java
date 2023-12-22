package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminDeleteService;
import client.action.Action;
import client.vo.ActionForward;
import util.ScriptWriter;
import util.WrapperConverter;

public class AdminDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
			
		int id = WrapperConverter.parseInt.apply(request.getParameter("id"));
		int car_option_id = WrapperConverter.parseInt.apply(request.getParameter("id"));
		
		// ���� 
		AdminDeleteService svc = new AdminDeleteService();
		boolean useDelete = svc.removetdl(id);
		boolean useDelete2 = svc.removecarlst(car_option_id);
		
        if (useDelete) {
            ScriptWriter.WriteFn(response.getWriter(), "���� ���� ����", "adminSelect.car");
        } else if (useDelete2) {
            ScriptWriter.WriteFn(response.getWriter(), "��ǰ ���� ����", "adminProductSelect.car");
        } else if (!useDelete2 && !useDelete) {
            ScriptWriter.WriteFn(response.getWriter(), "���� ����", "dashboard.jsp");
        } 
		

		return forward;
	}
	
}
