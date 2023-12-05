package admin.svc;

import static client.db.dbConn.*;

import java.sql.Connection;

import admin.dao.AdminDAO;


public class AdminDeleteService {
	
	public boolean removetdl(int id) throws Exception {	
		boolean check = false;
		
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int count = dao.removelst(id);
		
		if(count > 0) {
			commit(con);
			check = true;
		} else {
			rollback(con);
		}
		close(con);
		
		return check;
	}
	
}
