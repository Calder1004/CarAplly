package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminModelWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// param ����
		String carBrandIdParam = request.getParameter("carBrandId");
		// carBrandId �ʱ갪 ����
		int carBrandId = 0;
		String name = request.getParameter("name");
		
		
		
		if(carBrandIdParam != null && !carBrandIdParam.isEmpty()) {
		  carBrandId = Integer.parseInt(carBrandIdParam);
		}
		
		
		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertModel(carBrandId,name);
		if (check >0 ) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�� ��Ͽ� �����ϼ̽��ϴ�.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�� ��Ͽ� �����ϼ̽��ϴ�.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		}
		return forward;
	}

}
