package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class UserAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        String selectedIdString = request.getParameter("id");
        int id = (selectedIdString != null && !selectedIdString.isEmpty()) ? Integer.parseInt(selectedIdString) : 0;
        System.out.println("centerid: " + id);

        String date = request.getParameter("selectedDate");
        System.out.println("Date: " + date);

   
        String selectedOptionId = request.getParameter("optionid");
        System.out.println("Option ID: " + selectedOptionId);
        request.setAttribute("id", id);
        request.setAttribute("date", selectedOptionId);
        request.setAttribute("optionid", selectedOptionId);
        forward = new ActionForward("user.jsp", false);
        return forward;
    }
}