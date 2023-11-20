package dao;

import java.sql.Connection;

public class CarDAO {
	Connection con;
	private static CarDAO instance;
	private CarDAO() {};
	
	public static CarDAO getInstance() {
		if(instance == null) {
			instance = new CarDAO();
		}
		return instance;
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}
}
