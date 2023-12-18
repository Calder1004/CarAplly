package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;
import util.WrapperConverter;

public class AdminModelWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// param 받음
		int carBrandId = WrapperConverter.parseInt.apply(request.getParameter("carBrandId"));
		String name = request.getParameter("name");

		
		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertModel(carBrandId,name);
		if (check >0 ) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('모델 등록에 성공하셨습니다.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('모델 등록에 실패하셨습니다.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		}
		return forward;
	}

}
