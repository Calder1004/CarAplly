package admin.action;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminCarOptionWriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		String carIdparam = request.getParameter("carId");
		String ccParam = request.getParameter("cc");
		String kmParam = request.getParameter("km");
		String priceParam = request.getParameter("price");
		String color = request.getParameter("color");
		String grade = request.getParameter("grade");

		// carIdparam �� Ȯ��
		int carId = 0; // �⺻�� ����
		if (carIdparam != null && !carIdparam.isEmpty()) {
		    carId = Integer.parseInt(carIdparam);
		}

		// ccParam �� Ȯ��
		int cc = 0; // �⺻�� ����
		if (ccParam != null && !ccParam.isEmpty()) {
		    cc = Integer.parseInt(ccParam);
		}

		// kmParam �� Ȯ��
		int km = 0; // �⺻�� ����
		if (kmParam != null && !kmParam.isEmpty()) {
		    km = Integer.parseInt(kmParam);
		}

		// priceParam �� Ȯ��
		double price = 0.0; // �⺻�� ����
		if (priceParam != null && !priceParam.isEmpty()) {
		    price = Double.parseDouble(priceParam);
		}
		
		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertCarOption(carId, color, cc, km, price, grade);
		if(check > 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�ɼ� ��Ͽ� �����ϼ̽��ϴ�')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�ɼ� ��Ͽ� �����Ͽ����ϴ�.')");
			out.println("window.location='adminPostProduct.car'");
			out.println("</script>");
		}

		return forward;
	}
	
}
