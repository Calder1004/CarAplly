package admin.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminUpdateService;
import admin.vo.AdminDriveSelectBean;
import client.action.Action;
import client.vo.ActionForward;

public class AdminUpdateAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int carId = Integer.parseInt(request.getParameter("carId"));
		Date date = Date.valueOf(request.getParameter("date"));
		String model = request.getParameter("model");
		String name = request.getParameter("name");
		boolean state = Boolean.parseBoolean(request.getParameter("state"));
	
		AdminUpdateService svc = new AdminUpdateService();
		AdminDriveSelectBean UpdateList = new AdminDriveSelectBean();
			UpdateList.setId(id);
			UpdateList.setCarId(carId);
			UpdateList.setDate(date);
			UpdateList.setModel(model);
			UpdateList.setName(name);
			UpdateList.setState(state);
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
