package admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminBrandSelectAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		AdminProductWriteService svc = new AdminProductWriteService();
		List brandList= svc.inquiryBrand();
		List ModelList= svc.inquiryModel();
		System.out.println(brandList);
		System.out.println(ModelList);
		request.setAttribute("brandList",brandList);
		request.setAttribute("modelList", ModelList);
		forward = new ActionForward("brandselecttest.jsp", false);
		return forward;
	}

}
