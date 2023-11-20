package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static db.dbConn.*;

import vo.CarListBean;
import vo.CarListOptionBean;

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
	
	public ArrayList<CarListOptionBean> getCarOptionList() {
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    ArrayList<CarListOptionBean> carlistoptionarr = new ArrayList<CarListOptionBean>();
	    String sql = "select * from car_detail_view";

	    try {
	        pstmt = con.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            CarListOptionBean carListOptionBean = new CarListOptionBean();
	            carListOptionBean.setColor(rs.getString("color"));
	            carListOptionBean.setCc(rs.getInt("cc"));
	            carListOptionBean.setKm(rs.getInt("km"));
	            carListOptionBean.setPrice(rs.getString("price"));
	            carListOptionBean.setGrade(rs.getString("grade"));
	            carlistoptionarr.add(carListOptionBean);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("에러:" + e);
	    } finally {
	        close(rs);
	        close(pstmt);
	    }
	    return carlistoptionarr;
	}
}
