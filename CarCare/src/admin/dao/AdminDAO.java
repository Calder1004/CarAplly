package admin.dao;

import static util.dbConnection.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import admin.vo.AdminDriveSelectBean;
import admin.vo.AdminDriveSelectBean.States;
import admin.vo.AdminProductSelectBean;

public class AdminDAO {

	// setting
	private static AdminDAO instance;
	private Connection con;

	private AdminDAO() {
	} // 외부에서 인스턴스 생성을 막음

	public static AdminDAO getInstance() {
		if (instance == null) {
			instance = new AdminDAO();
		}
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public enum SQLQueries {
	    SELECT_DRIVE_SCHEDULE_VIEW("SELECT * FROM drive_schedule_view"),
		SELECT_DRIVE_BY_ID("SELECT * FROM drive_schedule_view WHERE id=?"),
		UPDATE_SCHEDULED_DRIVE_INFO("UPDATE schedule_drive"
				+ " INNER JOIN kakaouserinfos ON schedule_drive.kakaouser_id = kakaouserinfos.id"
				+ " INNER JOIN car_options ON schedule_drive.car_option_id = car_options.id"
				+ " INNER JOIN cars ON car_options.car_id = cars.id" + " SET" + " schedule_drive.reservation_date = ?,"
				+ " cars.name = ?," + " kakaouserinfos.nickname = ?," + " schedule_drive.state = ?,"
				+ " schedule_drive.car_option_id = ?" + " WHERE schedule_drive.id = ? "),
		DELETE_SCHEDULED_DRIVE_BY_ID("DELETE FROM schedule_drive WHERE id = ?"),
		GET_ADMIN_PRODUCT_LIST("SELECT * FROM car_adminlist_view"),
	    INSERT_BRAND("insert into car_brands (name) values(?)"),
	    INSERT_MODEL("insert into cars (car_brand_id, name) values(?, ?)"),
	    INSERT_CAR_OPTION("insert into car_options (car_id, color, cc, km, price, grade) values (?, ?, ?, ?, ?, ?)"),
	    SELECT_BRANDS("select * from car_brands"),
	    SELECT_MODELS("select id, name from car_product_list_view"),
		SELECT_ADMIN("SELECT * FROM admin WHERE username=? AND password=?"),
		DELETE_CAR_OPTION("DELETE FROM car_options WHERE id = ?");
	    private final String query;

	    SQLQueries(String query) {
	        this.query = query;
	    }

	    public String getQuery() {
	        return query;
	    }
	}

	// 관리자 검증
	public boolean usrVld(String username, String password) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean check = false;
		try {
			pstmt = con.prepareStatement(SQLQueries.SELECT_ADMIN.getQuery());
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();

			check = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return check;
	}

	// 시승신청 조회
	public ArrayList<AdminDriveSelectBean> driveSlt() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<AdminDriveSelectBean> list = new ArrayList<AdminDriveSelectBean>();
		try {
			pstmt = con.prepareStatement(SQLQueries.SELECT_DRIVE_SCHEDULE_VIEW.getQuery());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				AdminDriveSelectBean bean = new AdminDriveSelectBean();
				bean.setId(rs.getInt("id"));
				bean.setCarId(rs.getInt("option_id"));
				bean.setDate(rs.getDate("date"));
				bean.setModel(rs.getString("model"));
				bean.setName(rs.getString("nickname"));
				bean.setCc(rs.getInt("cc"));
				bean.setColor(rs.getString("color"));
				bean.setGrade(rs.getString("grade"));
				bean.setKm(rs.getInt("km"));
				bean.setPrice(rs.getDouble("price"));
				// state 상태 stateValue에 할당
	            boolean stateValue = rs.getBoolean("state");
	            // state 변수 조건문 true면 Reserved, fail이면 failed
	            States state = stateValue ? States.RESERVED : States.FAILED;
	            bean.setState(state);
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	// 시승신청 업데이트 :: id값 받아서 bean업데이트
	public int updateSch(int id, AdminDriveSelectBean bean) {
		PreparedStatement pstmt = null;
		int check = 0;
		try {
			pstmt = con.prepareStatement(SQLQueries.UPDATE_SCHEDULED_DRIVE_INFO.getQuery());
			pstmt.setDate(1, bean.getDate());
			pstmt.setString(2, bean.getModel());
			pstmt.setString(3, bean.getName());
			pstmt.setInt(4, bean.getState().getValue() ? 1 : 0);
			pstmt.setInt(5, bean.getCarId());
			pstmt.setInt(6, id);
			check = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return check;
	}

	// id값에 맞는 데이터 선택후 가져다주는 dao함수
	public AdminDriveSelectBean datachSlt(int id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AdminDriveSelectBean bean = null;

		try {
			pstmt = con.prepareStatement(SQLQueries.SELECT_DRIVE_BY_ID.getQuery());
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean = new AdminDriveSelectBean();
				bean.setId(rs.getInt("id"));
				bean.setCarId(rs.getInt("option_id"));
				bean.setDate(rs.getDate("date"));
				bean.setModel(rs.getString("model"));
				bean.setName(rs.getString("nickname"));
				bean.setCc(rs.getInt("cc"));
				bean.setColor(rs.getString("color"));
				bean.setGrade(rs.getString("grade"));
				bean.setKm(rs.getInt("km"));
				bean.setPrice(rs.getDouble("price"));
				bean.setState(rs.getBoolean("state") ? States.RESERVED : States.FAILED);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return bean;
	}

	// 시승신청 리스트 삭제
	public int removeLst(int id) {
		PreparedStatement pstmt = null;
		int count = 0;

		try {
			pstmt = con.prepareStatement(SQLQueries.DELETE_SCHEDULED_DRIVE_BY_ID.getQuery());
			pstmt.setInt(1, id);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error:" + e);
		} finally {
			close(pstmt);
		}
		return count;
	}
	
	public int removeCarPrdLst(int id) {
		PreparedStatement pstmt = null;
		int count = 0;
		
		try {
			pstmt = con.prepareStatement(SQLQueries.DELETE_CAR_OPTION.getQuery());
			pstmt.setInt(1, id);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return count;
	}

	// 관리자 상품 목록 조회
	public ArrayList<AdminProductSelectBean> admPrdSlt() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AdminProductSelectBean bean = null;
		ArrayList<AdminProductSelectBean> list = new ArrayList<AdminProductSelectBean>();
		try {
			pstmt = con.prepareStatement(SQLQueries.GET_ADMIN_PRODUCT_LIST.getQuery());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bean = new AdminProductSelectBean();
				bean.setId(rs.getInt("id"));
				bean.setCarId(rs.getInt("car_id"));
				bean.setBrand(rs.getString("brand"));
				bean.setModel(rs.getString("model"));
				bean.setColor(rs.getString("color"));
				bean.setCc(rs.getInt("cc"));
				bean.setKm(rs.getInt("km"));
				bean.setPrice(rs.getDouble("price"));
				bean.setGrade(rs.getString("grade"));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error:" + e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	// 관리자 브랜드 등록
	public int insBrd(String name) {
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(SQLQueries.INSERT_BRAND.getQuery());
			pstmt.setString(1, name);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return count;
	}

	// 관리자 모델 등록
	public int insModel(int carBrandId, String name) {
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(SQLQueries.INSERT_MODEL.getQuery());
			pstmt.setInt(1, carBrandId);
			pstmt.setString(2, name);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return count;
	}

	// 관리자 자동차 옵션 등록

	public int insCarOpt(int carId, String color, int cc, int km, double price, String grade) {
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(SQLQueries.INSERT_CAR_OPTION.getQuery());
			pstmt.setInt(1, carId);
			pstmt.setString(2, color);
			pstmt.setInt(3, cc);
			pstmt.setInt(4, km);
			pstmt.setDouble(5, price);
			pstmt.setString(6, grade);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return count;
	}

	// 관리자 브랜드 조회 ? 어차피 컬럼 두개뿐인데 map쓰는게 나은듯?
	public List<Map<Integer, String>> inqryBrd() {
		List<Map<Integer, String>> brandList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			pstmt = con.prepareStatement(SQLQueries.SELECT_BRANDS.getQuery());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int brandId = rs.getInt("id");
				String brandName = rs.getString("name");
		          Map<Integer, String> brandInfo = new HashMap<>();
		            brandInfo.put(brandId, brandName);
		            brandList.add(brandInfo);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}  finally {
			close(rs);
			close(pstmt);
		}
		return brandList;
	}
	// 어차피 모델은 car_id랑 id값만 넘기면되지않음?
	public List<Map<Integer, String>> inqryMod() {
	    List<Map<Integer, String>> modelList = new ArrayList<>();
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    
	    try {
	        pstmt = con.prepareStatement(SQLQueries.SELECT_MODELS.getQuery());
	        rs = pstmt.executeQuery();
	        
	        while (rs.next()) {
	            int modelId = rs.getInt("id");
	            String modelName = rs.getString("name");

	            Map<Integer, String> modelInfo = new HashMap<>();
	            modelInfo.put(modelId, modelName); // key와 value의 순서 변경
	            modelList.add(modelInfo);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        close(rs);
	        close(pstmt);
	    }

	    return modelList;
	}
}