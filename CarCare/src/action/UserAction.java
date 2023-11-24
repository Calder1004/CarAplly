package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class UserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		int id = Integer.parseInt(request.getParameter("id"));
		int optionid = Integer.parseInt(request.getParameter("optionid"));
		String date = request.getParameter("date");
		
		
		return forward;
	}
	
	
}
