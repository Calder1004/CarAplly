package action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.KaKaoService;
import vo.ActionForward;
import vo.KaKaoBean;

public class KaKaoAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        try {
            String code = request.getParameter("code");
            
            String accessToken = KaKaoService.getAccessToken(code);
           
            KaKaoService ks = new KaKaoService();
            Map<String, Object> userInfo = ks.getUserInfo(accessToken);
	     
       
            long id = Long.parseLong((String) userInfo.get("id"));
            String nickname = (String) userInfo.get("nickname");
            String connected_at = (String) userInfo.get("connected_at");
            
//
//            System.out.println("id:" + id);
//            System.out.println("nickname:" + nickname);
//            System.out.println("connected_at:" + connected_at);
            KaKaoBean kkb = new KaKaoBean(id,nickname,connected_at);
            
//            System.out.println("KaKaoBean Data:");
//            for (java.lang.reflect.Field field : KaKaoBean.class.getDeclaredFields()) {
//                field.setAccessible(true);
//                System.out.println(field.getName() + ": " + field.get(kkb));
//            }
            ks.insertUser(kkb);
        
            request.setAttribute("kakaoid", id);
            request.setAttribute("nickname", nickname);
            request.setAttribute("connected_at", connected_at);
            
            forward = new ActionForward("test6.jsp", false); 
            
        } catch (Exception e) {
            e.printStackTrace();
        
        }

        return forward;
    }
    
}

