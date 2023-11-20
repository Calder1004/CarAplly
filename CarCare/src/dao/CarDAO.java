package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	            carListBean.setModel(rs.getString("model"));
	            carlistarr.add(carListBean);
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
	
    public List<CarListOptionBean> getCarOptionList(String brand, String model) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<CarListOptionBean> carlistoptionarr = new ArrayList<CarListOptionBean>();
        String sql = "SELECT * FROM car_detail_view WHERE brand = ? AND model = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, brand);
            pstmt.setString(2, model);
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
