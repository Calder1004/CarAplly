package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CenterListService;
import vo.ActionForward;
import vo.CenterBean;

public class CenterAction implements Action {

    private ArrayList<CenterBean> getCenterList() throws Exception {
        CenterListService centerListService = new CenterListService();
        return centerListService.selectCenterList();
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("utf-8");
            ActionForward forward = null;

            ArrayList<CenterBean> centerList = getCenterList();
            request.setAttribute("centerList", centerList);

            int optionId = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("optionid", optionId);

            forward = new ActionForward("centerList.jsp", false);

            return forward;
        } catch (Exception e) {
            e.printStackTrace();
            return null; 
        }
    }
}
