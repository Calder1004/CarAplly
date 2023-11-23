package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CenterListService;
import vo.ActionForward;
import vo.CenterBean;

public class CenterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = null;
		ArrayList<CenterBean> center;
		CenterListService centerlistsvc = new CenterListService();
		center = centerlistsvc.selectCenterList();
        request.setAttribute("center", center);
        System.out.println(request.getParameter("id"));
        int optionId = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("optionid", optionId);
        forward = new ActionForward("centerList.jsp", false);
		return forward;
	}

}
