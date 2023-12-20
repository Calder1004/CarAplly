package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;
import util.ScriptWriter;
import util.WrapperConverter;

public class AdminModelWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// param 받음
		int carBrandId = WrapperConverter.parseInt.apply(request.getParameter("carBrandId"));
		String name = WrapperConverter.parseString.apply(request.getParameter("name"));

		
		AdminProductWriteService svc = new AdminProductWriteService();
		int check = svc.insertModel(carBrandId,name);
		if (check > 0) {
			ScriptWriter.WriteFn(response.getWriter(), "모델 등록에 성공", "adminPostProduct.car");
		} else {
			ScriptWriter.WriteFn(response.getWriter(), "모델 등록에 실패", "adminPostProduct.car");
		}
		return forward;
	}

}
