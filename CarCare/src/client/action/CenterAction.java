package client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.CenterListService;
import client.vo.ActionForward;
import client.vo.CenterBean;

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
        
		int optionId = Integer.parseInt(request.getParameter("id")); // �ڵ��� OptionId�� �Ķ���� ������ ����
        
        request.setAttribute("center", center); // ���ʹ� ��ȸ�ǰ� �� ����� center ��ϵ��� ������
        request.setAttribute("optionId", optionId); // �ڵ��� option Id�� request�� �޾Ƽ� set���� ������
        
        forward = new ActionForward("center.jsp", false);
		
        return forward;
	}

}
