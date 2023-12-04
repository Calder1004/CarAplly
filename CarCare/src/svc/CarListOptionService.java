package svc;

import static db.dbConn.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import dao.CarDAO;
import vo.CarListOptionBean;

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
