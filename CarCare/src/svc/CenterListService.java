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
		CarDAO carDAO = CarDAO.getInstance();
		carDAO.setConnection(con);
		centerlist = carDAO.getCenterList();
		close(con);
		return centerlist;
	}
}
