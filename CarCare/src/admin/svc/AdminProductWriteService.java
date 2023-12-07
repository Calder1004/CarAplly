package admin.svc;

import java.sql.Connection;

import admin.dao.AdminDAO;

import static client.db.dbConn.*;

public class AdminProductWriteService {
	
	public int insertBrand(String name) throws Exception {
		boolean acs = false;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int ins = dao.insBrd(name);
		if ( ins > 0 ) {
			commit(con);
			acs = true;
		} else {
			rollback(con);
		}
		close(con);
		return ins;
	}
	
	public int insertModel(int carBrandId, String name) throws Exception {
		boolean acs = false;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int ins = dao.insModel(carBrandId, name);
		if( ins > 0) {
			commit(con);
			acs = true;
		} else {
			rollback(con);
		}
		close(con);
		return ins;
	}
	
	public int insertCarOption(int carId, String color,int cc, int km, double price,String grade) throws Exception {
		boolean acs = false;
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		int ins = dao.insCarOpt(carId, color, cc, km, price, grade);
		if (ins > 0 ) {
			commit(con);
			acs = true;
		} else {
			rollback(con);
		}
		close(con);
		return ins;
	}

}
