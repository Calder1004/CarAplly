package svc;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;

import vo.KaKaoBean;

public class KaKaoService {
	public String getAccessToken (String authorize_code) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";
 
        try {
            URL url = new URL(reqURL);	
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
 
            //    POST ��û�� ���� �⺻���� false�� setDoOutput�� true�� ������ ���ּ���
 
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
 
            //    POST ��û�� �ʿ�� �䱸�ϴ� �Ķ���� ��Ʈ���� ���� ����
// BufferedWriter �����ϰ� ������ ��� ������� ��ū���� �޾ƿ������� ����

            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=31a78ed0030ac205ddf12b4382b1b74a");  //������ �߱޹��� key
            sb.append("&redirect_uri=http://localhost:8084");     // ������ ������ ���� ���
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();
 
            //    ��� �ڵ尡 200�̶�� ����
// ���⼭ �ȵǴ°�찡 ���� �־ �ʼ� Ȯ�� !! ** 
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode+"Ȯ��");
 
            //    ��û�� ���� ���� JSONŸ���� Response �޼��� �о����
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
 
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result+"���");
 
            //    Gson ���̺귯���� ���Ե� Ŭ������ JSON�Ľ� ��ü ����
//            JSONParser parser = new JSONParser();
//            JSONElement element = parser.parse(result);
// 
//            access_Token = element.getAsJsonObject().get("access_token").getAsString();
//            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
 
            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);
 
            br.close();
            bw.close();
        } catch (IOException e) {
 
            e.printStackTrace();
        }
 
        return access_Token;
    }

	public static KaKaoBean getuserInfo(String accesstoken) throws Exception {
		ArrayList<Object> list = new ArrayList<Object>();
		String requestUrl = "https://kapi.kakao.com/v2/user/me";
		URL url = new URL(requestUrl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Authorization", "Bearer " + accesstoken);

		return null;
	}

}
