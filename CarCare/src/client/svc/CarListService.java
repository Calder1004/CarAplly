package client.svc;
import static client.db.dbConn.*;

import java.sql.Connection;
import java.util.ArrayList;

import client.dao.CarDAO;
import client.vo.CarListBean;

public class CarListService {
	
	//Service -> dao Á¢±Ù 
	public ArrayList<CarListBean> selectCarList() throws Exception {
		
		ArrayList<CarListBean> carList = null; 
		Connection con = getConnection();
		CarDAO dao = CarDAO.getInstance();
		dao.setConnection(con);
		carList = dao.getCarList();
		close(con);
		
		return carList;
	}

}
