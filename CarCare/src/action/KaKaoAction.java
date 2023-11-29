package action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.KaKaoService;
import vo.ActionForward;
import vo.KaKaoBean;

public class KaKaoAction implements Action {

    private void getKaKaoUserInfoAndInsertUser(HttpServletRequest request, String code) throws Exception {
        String accessToken = KaKaoService.getAccessToken(code);
        KaKaoService svc = new KaKaoService();
        Map<String, Object> userInfo = svc.KaKaogetUserInfo(accessToken);

        long id = Long.parseLong((String) userInfo.get("id"));
        String nickname = (String) userInfo.get("nickname");
        String connected_at = (String) userInfo.get("connected_at");

        KaKaoBean kkb = new KaKaoBean(id, nickname, connected_at);
        svc.insertKaKaoUser(kkb);

        request.setAttribute("kakaoid", id);
        request.setAttribute("nickname", nickname);
        request.setAttribute("connected_at", connected_at);
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        try {
            String code = request.getParameter("code");
            getKaKaoUserInfoAndInsertUser(request, code);

            forward = new ActionForward("testdrive.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}
