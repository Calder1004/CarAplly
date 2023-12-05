package admin.svc;

import static client.db.dbConn.*;

import java.sql.Connection;

import admin.dao.*;
import client.vo.ActionForward;

public class AdminVaildService {
	
    public boolean admChc(String username, String password) {
        Connection con = getConnection();
        AdminDAO dao = AdminDAO.getInstance();
        dao.setConnection(con);

        boolean check = false;

        try {
            check = dao.usrVld(username, password);
        } catch (Exception e) {
            e.printStackTrace(); 
        } finally {
            close(con); 
        }

        return check;
    }
}