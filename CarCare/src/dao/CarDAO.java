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
	    ArrayList<CarListBean> list = new ArrayList<CarListBean>();
	    String sql = "SELECT * FROM car_list_view";

	    try {
	        pstmt = con.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            CarListBean bean = new CarListBean();
	            bean.setId(rs.getInt("id"));
	            bean.setBrand(rs.getString("brand"));
	            bean.setModel(rs.getString("model"));
	            list.add(bean);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("에러:" + e);
	    } finally {
	        close(rs);
	        close(pstmt);
	    }
	    return list;
	}
	
	// 자동차 모델 옵션 조회
    public ArrayList<CarListOptionBean> getCarOptionList(String brand, String model) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<CarListOptionBean> list = new ArrayList<CarListOptionBean>();
        String sql = "SELECT * FROM car_option_view WHERE brand = ? AND model = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, brand);
            pstmt.setString(2, model);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                CarListOptionBean bean = new CarListOptionBean();
                bean.setId(rs.getInt("id"));
                bean.setColor(rs.getString("color"));
                bean.setCc(rs.getInt("cc"));
                bean.setKm(rs.getInt("km"));
                bean.setPrice(rs.getString("price"));
                bean.setGrade(rs.getString("grade"));
                list.add(bean);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("에러:" + e);
        } finally {
            close(rs);
            close(pstmt);
        }
        return list;
    }
    
    // 센터 조회
    public ArrayList<CenterBean> getCenterList() {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	ArrayList<CenterBean> list = new ArrayList<CenterBean>();
    	String sql = "SELECT * FROM centers";
    	
    	try {
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		while(rs.next()) {
    			CenterBean bean = new CenterBean();
    			bean.setId(rs.getInt("id"));
    			bean.setName(rs.getString("name"));
    			bean.setAddress(rs.getString("address"));
    			bean.setNumber(rs.getString("number"));
    			list.add(bean); // ArrayList에 bean 추가.
    		}
    	} catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("에러:" + e);
    	} finally {
    		close(rs);
    		close(pstmt);
    	}
    	
    	
    	return list;
    }
    
    // 예약 등록  <<bean file이 매개변수로 들어옴>>
    public int insertFormat(TestDriveBean tdb) {
		PreparedStatement pstmt = null;
		int check = 0;
		String sql = "INSERT INTO schedule_drive (center_id, kakaouser_id, car_option_id, reservation_date, state) VALUES(?,?,?,?,?)";
		try {			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, tdb.getCenterId());
			pstmt.setLong(2,tdb.getKakaouserId());
			pstmt.setInt(3, tdb.getCarId());
			pstmt.setDate(4, tdb.getReservationDate());
			pstmt.setBoolean(5, tdb.isState());

			check = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return check;
	}
    
    // 중복 등록 체크 <<id값이 매개변수로 들어옴>>
    public boolean isUserDupliCate(long id) {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	boolean check = false;
    	
    	try {
    		String sql = "SELECT id FROM kakaouserinfos WHERE id = ?";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setLong(1, id);
    		rs = pstmt.executeQuery();
    		
    		check = rs.next(); //컬럼 순회
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		close(rs);
    		close(pstmt);
    	}
    	return check;
    }
    // kakao 로그인 db 정보저장	<<bean파일이 매개변수로 들어옴>>
    public long intoKaKao(KaKaoBean kkb) {
    	PreparedStatement pstmt = null;
    	long check = 0;
    	String sql = "INSERT INTO kakaouserinfos (id,nickname,connected_at) VALUES(?,?,?)";
    	try {

            Instant instant = Instant.parse(kkb.getConnected_at()); 
            pstmt = con.prepareStatement(sql);
    		pstmt.setLong(1, kkb.getId());
    		pstmt.setString(2,	kkb.getName());
    		pstmt.setObject(3, instant);
    		
    		check = pstmt.executeUpdate(); // 쿼리 업데이트
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		close(pstmt);
    	}
    	return check;
    }

}
