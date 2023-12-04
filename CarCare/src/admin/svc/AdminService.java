package admin.svc;

import static db.dbConn.*;

import java.sql.Connection;

import admin.dao.*;
import vo.ActionForward;

public class AdminService {
	
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