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
		
		// 서비스 
		AdminDeleteService svc = new AdminDeleteService();
		boolean useDelete = svc.removetdl(id);
		if(!useDelete) {
			ScriptWriter.WriteFn(response.getWriter(), "삭제를 실패하였습니다", "adminSelect.car");
		} else {
			ScriptWriter.WriteFn(response.getWriter(), "삭제를 성공하였습니다", "adminSelect.car");
		}
		
		return forward;
	}
	
}
