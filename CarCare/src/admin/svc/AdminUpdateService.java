package admin.svc;
import java.sql.Connection;

import admin.dao.AdminDAO;
import admin.vo.AdminDriveSelectBean;

import static db.dbConn.*;
public class AdminUpdateService {
	
	public boolean admUpd(AdminDriveSelectBean bean) {
		boolean access = false;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int upd = dao.updateSch(bean); 
		
		if(upd >0 ) {
			commit(con);
			access = true;
		} else {
			rollback(con);
		}
		close(con);
		return access;
	}
}
