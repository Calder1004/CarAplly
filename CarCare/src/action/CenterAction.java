package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CenterListService;
import vo.ActionForward;
import vo.CenterBean;

public class CenterAction implements Action {
	// service ����/�Լ� ȣ��/��ȯ
    
	private ArrayList<CenterBean> getCenterList() throws Exception {
        CenterListService centerListService = new CenterListService();
        return centerListService.selectCenterList();
    }
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = null;

		ArrayList<CenterBean> center = getCenterList(); // service �Ҵ�;
        
		int optionId = Integer.parseInt(request.getParameter("id"));
        
        request.setAttribute("center", center);
        request.setAttribute("optionid", optionId);
        
        forward = new ActionForward("centerList.jsp", false);
		
        return forward;
	}

}
