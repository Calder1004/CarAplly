package admin.svc;

import static util.dbConnection.*;

import java.sql.Connection;

import admin.dao.AdminDAO;


public class AdminDeleteService {
	
	// 관리자 신청 삭제
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
	
	public boolean removecarlst(int id) throws Exception {
		boolean check = false;
		
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int count = dao.removeCarPrdLst(id);
		
		if(count > 0 ) {
			commit(con);
			check = true;
		} else {
			rollback(con);
		}
		close(con);
		return check;
		
	}
	
}
