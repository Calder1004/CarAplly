package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminDeleteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		int id = Integer.parseInt(request.getParameter("id")); 
		// 서비스 
		AdminDeleteService svc = new AdminDeleteService();
		boolean useDelete = svc.removetdl(id);
		if(!useDelete) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제를 실패하였습니다')");
			out.println("window.location='adminSelect.car'");
			out.println("</script>");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제를 성공하였습니다.');");
			out.println("window.location='adminSelect.car';");
			out.println("</script>");
		}
		
		return forward;
	}
	
}
