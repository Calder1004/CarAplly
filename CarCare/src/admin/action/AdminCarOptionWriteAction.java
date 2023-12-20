package admin.action;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;
import util.ScriptWriter;
import util.WrapperConverter;

public class AdminCarOptionWriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		int carId = WrapperConverter.parseInt.apply(request.getParameter("carId"));
		int cc = WrapperConverter.parseInt.apply(request.getParameter("cc"));
		int km = WrapperConverter.parseInt.apply(request.getParameter("km"));
		double price = WrapperConverter.parseDouble.apply(request.getParameter("price"));
		String color = WrapperConverter.parseString.apply(request.getParameter("color"));
		String grade = WrapperConverter.parseString.apply(request.getParameter("grade"));


		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertCarOption(carId, color, cc, km, price, grade);
		if(check > 0) {
			ScriptWriter.WriteFn(response.getWriter(), "옵션 등록에 성공", "adminPostProduct.car");
		} else {
			ScriptWriter.WriteFn(response.getWriter(), "옵션 등록에 실패", "adminPostProduct.car");
		}

		return forward;
	}
	
}
