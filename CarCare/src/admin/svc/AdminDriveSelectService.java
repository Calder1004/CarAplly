package admin.svc;

import static util.dbConnection.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import admin.dao.AdminDAO;
import admin.vo.AdminDriveSelectBean;


public class AdminDriveSelectService {
	
	// 관리자 페이지 예약차량 조회
	public List<AdminDriveSelectBean> AdminDss() throws Exception {
		List<AdminDriveSelectBean> list = null;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		list = dao.driveSlt();
		close(con);
		return list;		
	}
	

}
