package admin.svc;

import static client.db.dbConn.close;
import static client.db.dbConn.commit;
import static client.db.dbConn.getConnection;
import static client.db.dbConn.rollback;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import admin.dao.AdminDAO;

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
	
	public List<Map<Integer, String>> inquiryBrand() throws Exception {
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		List<Map<Integer, String>> brandList = dao.inqryBrd();
		close(con);
		return brandList;
	}
	
	public List<Map<Integer, String>> inquiryModel() throws Exception {
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		List<Map<Integer, String>> modelList = dao.inqryMod();
		close(con);
		return modelList;
	}
	
	public void inquiryCarOption() throws Exception {
		Connection con = getConnection();
		AdminDAO dao = AdminDAO.getInstance();
		dao.setConnection(con);
		
	}
}
