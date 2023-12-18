package admin.action;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;
import util.WrapperConverter;

public class AdminCarOptionWriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		int carId = WrapperConverter.parseInt.apply(request.getParameter("carId"));
		int cc = WrapperConverter.parseInt.apply(request.getParameter("cc"));
		int km = WrapperConverter.parseInt.apply(request.getParameter("km"));
		double price = WrapperConverter.parseDouble.apply(request.getParameter("price"));

		String color = request.getParameter("color");
		String grade = request.getParameter("grade");


		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertCarOption(carId, color, cc, km, price, grade);
		if(check > 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('옵션 등록에 성공하셨습니다')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('옵션 등록에 실패하였습니다.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		}

		return forward;
	}
	
}
