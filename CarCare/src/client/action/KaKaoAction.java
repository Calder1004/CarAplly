package client.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.svc.KaKaoService;
import client.vo.ActionForward;
import client.vo.KaKaoBean;
import util.WrapperConverter;

public class KaKaoAction implements Action {
	
	// token 
    private void getKaKaoUserInfoAndInsertUser(HttpServletRequest request, String code) throws Exception {
        String accessToken = KaKaoService.getAccessToken(code);
        KaKaoService svc = new KaKaoService();
        Map<String, Object> userInfo = svc.KaKaogetUserInfo(accessToken);
        

        long kakaoId = WrapperConverter.parseLong.apply(((String) userInfo.get("id")));
		String nickname = WrapperConverter.parseString.apply((String) userInfo.get("nickname"));
        String connected_at = WrapperConverter.parseString.apply((String) userInfo.get("connected_at"));

        KaKaoBean kkb = new KaKaoBean(kakaoId, nickname, connected_at);
        svc.insertKaKaoUser(kkb);

        request.setAttribute("kakaoId", kakaoId);
        request.setAttribute("nickname", nickname);
        request.setAttribute("connected_at", connected_at);
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        try {
        	String code = WrapperConverter.parseString.apply(request.getParameter("code"));

            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0");
            getKaKaoUserInfoAndInsertUser(request, code);

            forward = new ActionForward("testdrive.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}
