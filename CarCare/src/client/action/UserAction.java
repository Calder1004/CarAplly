package client.action;

import java.io.PrintWriter;

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
        // date는 testDrive에서 최종적으로넘어감, 여기서는 데이터변환이 필요없음
        String date = WrapperConverter.parseString.apply(request.getParameter("date"));
        int optionId = WrapperConverter.parseInt.apply(request.getParameter("optionId"));


        HttpSession session = request.getSession();

        session.setAttribute("centerId", centerId);
        session.setAttribute("date", date);
        session.setAttribute("optionId", optionId);

        if (date == null || date.trim().isEmpty()) {
        	response.setContentType("text/html;charset=utf-8");
            String alertScript = "<script>alert('예약일을 선택하세요.'); history.back();</script>";
            
            response.getWriter().write(alertScript);
            return null; 
        }
        
        forward = new ActionForward("user.jsp", false);
        
        return forward;
    }
}