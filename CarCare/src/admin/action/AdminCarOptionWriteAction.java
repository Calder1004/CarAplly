package admin.action;
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
		System.out.println(carIdparam);
		System.out.println(ccParam);
		System.out.println(kmParam);
		System.out.println(priceParam);
		System.out.println(color);
		System.out.println(grade);
		// carIdparam 값 확인
		int carId = 0; // 기본값 설정
		if (carIdparam != null && !carIdparam.isEmpty()) {
		    carId = Integer.parseInt(carIdparam);
		}

		// ccParam 값 확인
		int cc = 0; // 기본값 설정
		if (ccParam != null && !ccParam.isEmpty()) {
		    cc = Integer.parseInt(ccParam);
		}

		// kmParam 값 확인
		int km = 0; // 기본값 설정
		if (kmParam != null && !kmParam.isEmpty()) {
		    km = Integer.parseInt(kmParam);
		}

		// priceParam 값 확인
		double price = 0.0; // 기본값 설정
		if (priceParam != null && !priceParam.isEmpty()) {
		    price = Double.parseDouble(priceParam);
		}
		
		AdminProductWriteService svc = new AdminProductWriteService();
		svc.insertCarOption(carId, color, cc, km, price, grade);
		
		forward = new ActionForward("dashboard.jsp", false);
		return forward;
	}
	
}
