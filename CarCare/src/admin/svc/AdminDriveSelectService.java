package admin.svc;

import static util.dbConnection.*;

import java.sql.Connection;
import java.util.ArrayList;

import admin.dao.AdminDAO;
import admin.vo.AdminDriveSelectBean;


public class AdminDriveSelectService {
	
	// ������ ������ �������� ��ȸ
	public ArrayList<AdminDriveSelectBean> AdminDss() throws Exception {
		ArrayList<AdminDriveSelectBean> list = null;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		list = dao.driveSlt();
		close(con);
		return list;		
	}
}
