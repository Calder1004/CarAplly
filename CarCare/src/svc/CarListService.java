package svc;
import static db.dbConn.*;

import java.sql.Connection;
import java.util.ArrayList;
import dao.CarDAO;
import vo.CarListBean;

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
