package action;

import static db.dbConn.close;
import static db.dbConn.commit;
import static db.dbConn.getConnection;
import static db.dbConn.rollback;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import svc.KaKaoService;
import vo.ActionForward;
import vo.KaKaoBean;
import vo.TestDriveBean;

public class KaKaoAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        try {
            String code = request.getParameter("code");
            System.out.println("Authorization Code: " + code);
            
            String accessToken = KaKaoService.getAccessToken(code);

            KaKaoService ks = new KaKaoService();
            Map<String, Object> userInfo = ks.getUserInfo(accessToken);
	     
       
            
//            String idString = (String) userInfo.get("id");
//            int id = (idString != null && !idString.isEmpty()) ? Integer.parseInt(idString) : 0;  // �⺻�� ���� �Ǵ� ���� ó���� ���� ��
            long id = Long.parseLong((String) userInfo.get("id"));
            String nickname = (String) userInfo.get("nickname");
            String connected_at = (String) userInfo.get("connected_at");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");

            try {
                // String�� Date�� �Ľ�
                Date parsedDate = (Date) dateFormat.parse(connected_at);

                // Date�� Timestamp�� ��ȯ
                Timestamp timestamp = new Timestamp(parsedDate.getTime());

                // ���� timestamp�� ����� �� �ֽ��ϴ�.
                System.out.println("Formatted Timestamp: " + timestamp);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            System.out.println("id:" + id);
            System.out.println("nickname:" + nickname);
            System.out.println("connected_at:" + connected_at);

            KaKaoBean kkb = new KaKaoBean(id,nickname,connected_at);

            System.out.println("KaKaoBean Data:");
            for (java.lang.reflect.Field field : KaKaoBean.class.getDeclaredFields()) {
                field.setAccessible(true);
                System.out.println(field.getName() + ": " + field.get(kkb));
            }
            ks.insertUser(kkb);
            System.out.println(kkb);
            request.setAttribute("kakaoid", id);
            request.setAttribute("nickname", nickname);
            request.setAttribute("connected_at", connected_at);
            
            forward = new ActionForward("test6.jsp", false); 
            System.out.println("Forward Path: " + forward.getPath());
            System.out.println("Forward Redirect: " + forward.isRedirect());
        } catch (Exception e) {
            e.printStackTrace();
        
        }

        return forward;
    }
    
}

