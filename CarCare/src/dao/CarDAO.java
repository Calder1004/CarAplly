package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import static db.dbConn.*;

import vo.CarListBean;
import vo.CarListOptionBean;
import vo.CenterBean;
import vo.KaKaoBean;
import vo.TestDriveBean;
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
	
	// 자동차 모델 조회
	public ArrayList<CarListBean> getCarList() {
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    ArrayList<CarListBean> carlistarr = new ArrayList<CarListBean>();
	    String sql = "SELECT * FROM car_list_view";

	    try {
	        pstmt = con.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            CarListBean carListBean = new CarListBean();
	            carListBean.setId(rs.getInt("id"));
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
	
	// 자동차 모델 옵션 조회
    public List<CarListOptionBean> getCarOptionList(String brand, String model) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<CarListOptionBean> carlistoptionarr = new ArrayList<CarListOptionBean>();
        String sql = "SELECT * FROM car_option_view WHERE brand = ? AND model = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, brand);
            pstmt.setString(2, model);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                CarListOptionBean carListOptionBean = new CarListOptionBean();
                carListOptionBean.setId(rs.getInt("id"));
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
    
    // 센터 조회
    public ArrayList<CenterBean> getCenterList() {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	ArrayList<CenterBean> centerlistarr = new ArrayList<CenterBean>();
    	String sql = "SELECT * FROM centers";
    	
    	try {
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		while(rs.next()) {
    			CenterBean centerbean = new CenterBean();
    			centerbean.setId(rs.getInt("id"));
    			centerbean.setName(rs.getString("name"));
    			centerbean.setAddress(rs.getString("address"));
    			centerbean.setNumber(rs.getString("number"));
    			centerlistarr.add(centerbean);
    		}
    	} catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("에러:" + e);
    	} finally {
    		close(rs);
    		close(pstmt);
    	}
    	
    	
    	return centerlistarr;
    }
    
    // 예약등록
    public int insertFormat(TestDriveBean tdb) {
		PreparedStatement pstmt = null;
		int insertTestDrive = 0;
		String sql = "INSERT INTO schedule_drive (center_id, user_id, car_id, reservation_date, state) VALUES(?,?,?,?,?)";
		try {			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, tdb.getCenterId());
			pstmt.setInt(2,	tdb.getUserId());
			pstmt.setInt(3, tdb.getCarId());
			pstmt.setDate(4, tdb.getReservationDate());
			pstmt.setBoolean(5, tdb.isState());
	        System.out.println("Before Query Execution - CenterID: " + tdb.getCenterId() +
	                ", UserID: " + tdb.getUserId() +
	                ", CarID: " + tdb.getCarId() +
	                ", ReservationDate: " + tdb.getReservationDate() +
	                ", State: " + tdb.isState());	
			insertTestDrive = pstmt.executeUpdate();
			System.out.println(insertTestDrive);
			System.out.println("DEBUG: SQL Query - " + pstmt.toString());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return insertTestDrive;
	}
    
    // kakao 로그인 db 정보저장	
    public long intoKaKao(KaKaoBean kkb) {
    	PreparedStatement pstmt = null;
    	long check = 0;
    	String sql = "INSERT INTO kakaouserinfos (id,nickname,connected_at) VALUES(?,?,?)";
    	try {
    		
            System.out.println("Before Query Execution - PreparedStatement Details:");
            System.out.println("SQL: " + sql);
            System.out.println("Parameter 1 (id): " + kkb.getId());
            System.out.println("Parameter 2 (nickname): " + kkb.getName());
            System.out.println("Parameter 3 (connected_at): " + kkb.getConnected_at());
            Instant instant = Instant.parse(kkb.getConnected_at());
            pstmt = con.prepareStatement(sql);
    		pstmt.setLong(1, kkb.getId());
    		pstmt.setString(2,	kkb.getName());
    		pstmt.setObject(3, instant);
    		check = pstmt.executeUpdate();
    		
    	      System.out.println("Query Executed: " + sql);
    	       System.out.println("Inserted Rows: " + check);
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		close(pstmt);
    	}
    	return check;
    }

}
