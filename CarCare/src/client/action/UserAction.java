package client.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.vo.ActionForward;
import util.WrapperConverter;

public class UserAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;
        
        int centerId = WrapperConverter.parseInt.apply(request.getParameter("id"));
        Date date = WrapperConverter.parseDate.apply(request.getParameter("date"));
        int optionId = WrapperConverter.parseInt.apply(request.getParameter("optionId"));
//        String optionId = request.getParameter("optionId");
        
		/*
		 * String selectedIdString = request.getParameter("id"); int centerid =
		 * (selectedIdString != null && !selectedIdString.isEmpty()) ?
		 * Integer.parseInt(selectedIdString) : 0;
		 */

//        String date = request.getParameter("date");

        HttpSession session = request.getSession();

        session.setAttribute("centerId", centerId);
        session.setAttribute("date", date);
        session.setAttribute("optionId", optionId);
        
        forward = new ActionForward("user.jsp", false);
        
        return forward;
    }
}