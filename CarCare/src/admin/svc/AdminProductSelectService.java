package admin.svc;

import static client.db.dbConn.*;

import java.sql.Connection;
import java.util.ArrayList;

import admin.dao.AdminDAO;
import admin.vo.AdminProductSelectBean;
public class AdminProductSelectService {
	
	public ArrayList<AdminProductSelectBean> getAdminProductList() throws Exception {
		ArrayList<AdminProductSelectBean> list = null;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance(); // �̱��� ������ ��ȯ, Ŭ������ �ν��Ͻ��� ����
		dao.setConnection(con);
		list = dao.admPrdSlt();
		close(con);
		return list;
	}
}
