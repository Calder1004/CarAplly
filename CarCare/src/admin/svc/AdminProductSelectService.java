package admin.svc;

import static util.dbConnection.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import admin.dao.AdminDAO;
import admin.vo.AdminProductSelectBean;
public class AdminProductSelectService {
	
	public List<AdminProductSelectBean> getAdminProductList() throws Exception {
		List<AdminProductSelectBean> list = null;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance(); // 싱글톤 패턴의 일환, 클래스의 인스턴스를 얻어옴
		dao.setConnection(con);
		list = dao.admPrdSlt();
		close(con);
		return list;
	}
}
