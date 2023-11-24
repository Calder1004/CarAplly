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
import com.google.gson.*;
import com.google.gson.JsonElement;

import vo.KaKaoBean;

public class KaKaoService {
    public static String getAccessToken(String authorizeCode) {
        String accessToken = "";
        String refreshToken = "";
        String reqURL = "https://kapi.kakao.com/v2/user/me";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            // 요청 데이터 전송
            sendRequestData(conn, authorizeCode);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return accessToken;
    }

    private static void sendRequestData(HttpURLConnection conn, String authorizeCode) throws IOException {
        conn.setRequestMethod("POST");
        conn.setDoOutput(true);

        try (BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()))) {
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=6f31d4b7d1ae1e95eb6357159f3ee132");
            sb.append("&redirect_uri=http://localhost:8084/CarCare/kakao.car");
            sb.append("&code=").append(authorizeCode);

            System.out.println("Request data: " + sb.toString());
            bw.write(sb.toString());
            bw.flush();
            bw.close();
            System.out.println(bw);
        }
    }
}
