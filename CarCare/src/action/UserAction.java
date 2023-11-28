package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ActionForward;

public class UserAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;
        
        String selectedIdString = request.getParameter("id");
        int centerid = (selectedIdString != null && !selectedIdString.isEmpty()) ? Integer.parseInt(selectedIdString) : 0;
        System.out.println("centerid: " + centerid);

        String date = request.getParameter("selectedDate");
        String optionId = request.getParameter("optionid");
        System.out.println("Date: " + date);

        HttpSession session = request.getSession();

        session.setAttribute("centerid", centerid);
        session.setAttribute("date", date);
        session.setAttribute("optionid", optionId);
        forward = new ActionForward("user.jsp", false);
        return forward;
    }
}