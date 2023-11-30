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
    
		return dao.usrVld(username, password);
	}
}