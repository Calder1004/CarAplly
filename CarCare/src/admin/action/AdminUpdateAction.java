package admin.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import admin.vo.AdminDriveSelectBean.States;
import client.action.Action;
import client.vo.ActionForward;
import util.WrapperConverter;

public class AdminUpdateAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		request.setCharacterEncoding("UTF-8");
		
		int id = WrapperConverter.parseInt.apply(request.getParameter("id"));
		int carId = WrapperConverter.parseInt.apply(request.getParameter("carId"));
		Date date = WrapperConverter.parseDate.apply(request.getParameter("date"));
		
		String model = request.getParameter("model");
		String name = request.getParameter("name");
		States state = States.valueOf(request.getParameter("state"));
	
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean UpdateList = new AdminDriveSelectBean(id,carId,date,model,name,state);
		
		boolean result = svc.admUpd(id, UpdateList);
	    
		if (result) {
	    	response.setContentType("text/html;charset=utf-8");
	    	PrintWriter out = response.getWriter();
	    	out.println("<script>");
	    	out.println("alert('예약 수정 완료')");
	    	out.println("window.location='adminSelect.car'");
	    	out.println("</script>");
        } else {
	    	response.setContentType("text/html;charset=utf-8");
	    	PrintWriter out = response.getWriter();
	    	out.println("<script>");
	    	out.println("alert('예약 수정 실패')");
	    	out.println("window.location='adminSelect.car'");
	    	out.println("</script>");
        }
		
	    return forward;
	}

}
