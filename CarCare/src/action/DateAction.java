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
        int id = (selectedIdString != null && !selectedIdString.isEmpty()) ? Integer.parseInt(selectedIdString) : 0; //null값이 아니거나, 파라미터가 비어있지 않으면  Integer로 바꾸고 아니면 0으로 
        
        
        String selectedOptionIdString = request.getParameter("optionId");
        int optionId = (selectedOptionIdString != null && !selectedOptionIdString.isEmpty()) ? Integer.parseInt(selectedOptionIdString) : 0;
        
        request.setAttribute("id", id);
        request.setAttribute("optionId", optionId);
        
        forward = new ActionForward("date.jsp", false);
        return forward;
    }
}