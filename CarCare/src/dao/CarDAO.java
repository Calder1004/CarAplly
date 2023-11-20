package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static db.dbConn.*;

import vo.CarListBean;

public class CarDAO {
	private static CarDAO instance;
	private Connection con;
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
	
	public ArrayList<CarListBean> getCarList() {
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    ArrayList<CarListBean> carlistarr = new ArrayList<CarListBean>();
	    String sql = "SELECT brand, model FROM carlistview";

	    try {
	        pstmt = con.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            CarListBean carListBean = new CarListBean();
	            carListBean.setBrand(rs.getString("brand"));
	            carListBean.setModel(rs.getString("model")); // 수정된 부분
	            carlistarr.add(carListBean);
	            System.out.println(carlistarr);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("에러:" + e);
	    } finally {
	        close(rs);
	        close(pstmt);
	    }
	    return carlistarr;
	}
}
