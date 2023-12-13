package client.svc;

import static client.db.dbConn.close;
import static client.db.dbConn.commit;
import static client.db.dbConn.getConnection;
import static client.db.dbConn.rollback;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import client.dao.CarDAO;
import client.vo.KaKaoBean;

public class KaKaoService {
	
	// Token ¾ò¾î¿È
    public static String getAccessToken(String authorizeCode) throws ParseException {
        String accessToken = "";
        String refreshToken = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";
        
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=31a78ed0030ac205ddf12b4382b1b74a");
            sb.append("&redirect_uri=http://localhost:8084/CarCare/kakao.car");
            sb.append("&code=" + authorizeCode);
            
            bw.write(sb.toString());
            bw.flush();
            bw.close();
            
            int responseCode = conn.getResponseCode();
            
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) {
                result += line;
            }
            
            JSONParser parser = new JSONParser();
            JSONObject elem = (JSONObject) parser.parse(result);

            String access_token = elem.get("access_token").toString();
            String refresh_token = elem.get("refresh_token").toString();
            accessToken = access_token;

            br.close();
            bw.close();
            
            
        } catch (IOException e) {
            e.printStackTrace();
        }

        return accessToken;
    }
    
    public Map<String, Object> KaKaogetUserInfo(String access_token) throws IOException {
        String host = "https://kapi.kakao.com/v2/user/me";
        Map<String, Object> result = new HashMap<>();
        try {
            URL url = new URL(host);

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestProperty("Authorization", "Bearer " + access_token);
            conn.setRequestMethod("GET");

            int responseCode = conn.getResponseCode();
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
            String line = "";
            String res = "";
            while((line=br.readLine())!=null)
            {
                res+=line;
            }
    
            JSONParser parser = new JSONParser();
            JSONObject obj = (JSONObject) parser.parse(res);

            JSONObject properties = (JSONObject) obj.get("properties");
   
            String id = obj.get("id").toString();
            String connected_at = obj.get("connected_at").toString();
            String nickname = properties.get("nickname").toString();
      
            result.put("id", id);
            result.put("nickname", nickname);
            result.put("connected_at", connected_at);

            br.close();


        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }

        return result;
    }
    
    public boolean insertKaKaoUser(KaKaoBean kkb) {
        CarDAO dao = CarDAO.getInstance();
        Connection con = getConnection();
        dao.setConnection(con);
        boolean isSuccess = false;
        
        if(!dao.isUserDupliCate(kkb.getId())) {
        
        long insertUser = dao.intoKaKao(kkb);

        kkb.setId(insertUser);

        try {
            if (insertUser > 0) {
                commit(con);
                isSuccess = true;
            } else {
                rollback(con);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con);
        }

        System.out.println("Insert success: " + isSuccess);
        System.out.println("Inserted TestDrive ID: " + kkb.getId());

        }
        return isSuccess;
       }
}
