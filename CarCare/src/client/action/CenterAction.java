package client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.CenterListService;
import client.vo.ActionForward;
import client.vo.CenterBean;

public class CenterAction implements Action {
	// service 접근/함수 호출/반환
    
	private ArrayList<CenterBean> getCenterList() throws Exception {
        CenterListService centerListService = new CenterListService();
        return centerListService.selectCenterList();
    }
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = null;

		ArrayList<CenterBean> center = getCenterList(); // service 할당;
        
		int optionId = Integer.parseInt(request.getParameter("id")); // 자동차 OptionId를 파라미터 값으로 받음
        
        request.setAttribute("center", center); // 센터는 조회되고 빈에 저장된 center 목록들을 내려줌
        request.setAttribute("optionId", optionId); // 자동차 option Id는 request로 받아서 set으로 내려줌
        
        forward = new ActionForward("center.jsp", false);
		
        return forward;
	}

}
