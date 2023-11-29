package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CarDAO;

import static db.dbConn.*;
import vo.CenterBean;

public class CenterListService {
	public ArrayList<CenterBean> selectCenterList() throws Exception {
		ArrayList<CenterBean> centerlist = null;
		Connection con = getConnection(); 
		CarDAO dao = CarDAO.getInstance();
		dao.setConnection(con);
		centerlist = dao.getCenterList();
		close(con);
		return centerlist;
	}
}
