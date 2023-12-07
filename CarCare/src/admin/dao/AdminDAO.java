package admin.dao;

import static client.db.dbConn.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import admin.vo.AdminDriveSelectBean;
import admin.vo.AdminProductSelectBean;


public class AdminDAO {
	
	// setting
    private static AdminDAO instance;
    private Connection con;
    private AdminDAO() {} // �ܺο��� �ν��Ͻ� ������ ����

    public static AdminDAO getInstance() {
        if (instance == null) {
            instance = new AdminDAO();
        }
        return instance;
    }

    public void setConnection(Connection con) {
        this.con = con;
    }
    
    // ������ ����
    public boolean usrVld(String username, String password) {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "SELECT * FROM admin WHERE username=? AND password=?";
    	boolean check = false;
    	try {
    	 pstmt = con.prepareStatement(sql);
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
    
    // �ý½�û ��ȸ
    public ArrayList<AdminDriveSelectBean> driveSlt() {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "SELECT * FROM drive_schedule_view";
    	ArrayList<AdminDriveSelectBean> list = new ArrayList<AdminDriveSelectBean>();
    	try {
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    	while(rs.next()) {
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
    		bean.setState(rs.getBoolean("state"));
    		list.add(bean);
    	}
    	} catch(Exception e) {
    		e.printStackTrace();
    	} finally {
    		close(rs);
    		close(pstmt);
    	}
		return list;
    }
    
    // �ý½�û ������Ʈ
    public int updateSch(int id,AdminDriveSelectBean bean) {
    	PreparedStatement pstmt = null;
        String sql = "UPDATE schedule_drive" + 
                " INNER JOIN kakaouserinfos ON schedule_drive.kakaouser_id = kakaouserinfos.id" + 
                " INNER JOIN car_options ON schedule_drive.car_option_id = car_options.id" + 
                " INNER JOIN cars ON car_options.car_id = cars.id" + 
                " SET" + 
                " schedule_drive.reservation_date = ?," + 
                " cars.name = ?," + 
                " kakaouserinfos.nickname = ?," +
                " schedule_drive.state = ?," + 
                " schedule_drive.car_option_id = ?"+  
                " WHERE schedule_drive.id = ? ";
    	int check = 0;
    	try {
    		pstmt = con.prepareStatement(sql);
    		pstmt.setDate(1,bean.getDate());
    		pstmt.setString(2,bean.getModel());
    		pstmt.setString(3, bean.getName());
    		pstmt.setInt(4, bean.isState() ? 1 : 0);
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
    
    // id���� �´� ������ ����
    public AdminDriveSelectBean datachSlt(int id) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        AdminDriveSelectBean bean = null;

        try {
            String sql = "SELECT * FROM drive_schedule_view WHERE id=?";
            pstmt = con.prepareStatement(sql);
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
                bean.setState(rs.getBoolean("state"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(rs);
            close(pstmt);
        }

        return bean;
    }
    
    // �ý½�û ����Ʈ ����
    public int removeLst(int id) {
    	PreparedStatement pstmt = null;
    	String sql = "DELETE FROM schedule_drive WHERE id = ?;";
    	int count = 0;
    	
    	try {	
    		pstmt=con.prepareStatement(sql);
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
    
    // ������ ��ǰ ��� ��ȸ
	public ArrayList<AdminProductSelectBean> admPrdSlt() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM car_adminlist_view";
		AdminProductSelectBean bean = null;
		ArrayList<AdminProductSelectBean> list = new ArrayList<AdminProductSelectBean>();
		try {
			pstmt = con.prepareStatement(sql);
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
	
	// ������ �귣�� ���
	public int insBrd(String name) {
		PreparedStatement pstmt = null;
		String sql = "insert into car_brands (name) values(?)";
		int count = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	// ������ �� ���
	public int insModel(int carBrandId,String name) {
		PreparedStatement pstmt = null;
		String sql = "insert into cars (car_brand_id,name) values(?,?)";
		int count = 0;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,carBrandId);
			pstmt.setString(2,name);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	// ������ �ڵ��� �ɼ� ���
	
	public int insCarOpt(int carId, String color, int cc , int km , double price, String grade) {
		PreparedStatement pstmt = null;
		String sql = "insert into car_options (car_id,color,cc,km,price,grade) values (?,?,?,?,?,?)";
		int count = 0;
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1,carId);
		pstmt.setString(2,color);
		pstmt.setInt(3,cc);
		pstmt.setInt(4,km);
		pstmt.setDouble(5, price);
		pstmt.setString(6, grade);
		count = pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}
	return count;
	}
}
