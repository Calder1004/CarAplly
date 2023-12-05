package client.svc;

import static client.db.dbConn.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import client.dao.CarDAO;
import client.vo.CarListOptionBean;

public class CarListOptionService {
	
	   public ArrayList<CarListOptionBean> selectOptionCarList(int carId, String brand, String model) throws Exception {
	        ArrayList<CarListOptionBean> carListOption = null; 
	        Connection con = getConnection();
	        CarDAO carDAO = CarDAO.getInstance();
	        carDAO.setConnection(con);
	        carListOption = carDAO.getCarOptionList(carId,brand, model);
	        close(con);
	        return carListOption;
	    }
}
