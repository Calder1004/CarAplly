package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class DateAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        ActionForward forward = null;

        String selectedIdString = request.getParameter("id");
        int id = (selectedIdString != null && !selectedIdString.isEmpty()) ? Integer.parseInt(selectedIdString) : 0;
        
        
        String selectedOptionIdString = request.getParameter("optionid");
        int optionId = (selectedOptionIdString != null && !selectedOptionIdString.isEmpty()) ? Integer.parseInt(selectedOptionIdString) : 0;

        
        System.out.println(id);
        System.out.println(optionId);
        
        forward = new ActionForward("date.jsp", false);
        return forward;
    }
}