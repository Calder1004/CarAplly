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
		AdminDAO dao = AdminDAO.getInstance(); // �̱��� ������ ��ȯ, Ŭ������ �ν��Ͻ��� ����
		dao.setConnection(con);
		list = dao.admPrdSlt();
		close(con);
		return list;
	}
}
