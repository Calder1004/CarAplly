package svc;

import static db.dbConn.close;
import static db.dbConn.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CarDAO;
import vo.CarListBean;
import vo.CarListOptionBean;

public class CarListOptionService {
	
	public ArrayList<CarListOptionBean> selectOptionCarList() throws Exception {
		ArrayList<CarListOptionBean> carOptionList = null; 
		Connection con = getConnection();
		CarDAO carDAO = CarDAO.getInstance();
		carDAO.setConnection(con);
		carOptionList = carDAO.getCarOptionList();
		close(con);
		
		return carOptionList;
	}
}
