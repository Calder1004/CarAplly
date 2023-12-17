package admin.svc;

import static util.dbConnection.*;

import java.sql.Connection;

import admin.dao.AdminDAO;


public class AdminDeleteService {
	
	// ������ ��û ����
	public boolean removetdl(int id) throws Exception {	
		boolean check = false;
		
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int count = dao.removeLst(id);
		
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
