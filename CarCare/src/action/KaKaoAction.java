package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.KaKaoService;
import vo.ActionForward;
import vo.KaKaoBean;

public class KaKaoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		String code = request.getParameter("code");
		System.out.println(code);
		String accesstoken = KaKaoService.getAccessToken(code);
		return forward;
	}
	
}
