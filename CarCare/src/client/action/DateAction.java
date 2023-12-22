package client.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.vo.ActionForward;
import util.WrapperConverter;

public class DateAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
        ActionForward forward = null;
        
        int id = WrapperConverter.parseInt.apply(request.getParameter("id"));
        int optionId = WrapperConverter.parseInt.apply(request.getParameter("optionId"));
        
        request.setAttribute("id", id);
        request.setAttribute("optionId", optionId);
        
        forward = new ActionForward("date.jsp", false);
        return forward;
    }
}