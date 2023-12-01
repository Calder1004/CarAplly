package admin.dao;

import static db.dbConn.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import admin.vo.AdminDriveSelectBean;
import vo.CenterBean;


public class AdminDAO {
	
	// setting
    private static AdminDAO instance;
    private Connection con;
    private AdminDAO() {}

    public static AdminDAO getInstance() {
        if (instance == null) {
            instance = new AdminDAO();
        }
        return instance;
    }

    public void setConnection(Connection con) {
        this.con = con;
    }
    
    // function :: AdminuserValid check
    public boolean usrVld(String username, String password) {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "SELECT * FROM admin WHERE username=? AND password=?";
    	boolean check = false;
    	try {
    	    System.out.println("Username: " + username);
    	    System.out.println("Password: " + password);
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
    
    public ArrayList<AdminDriveSelectBean> driveSlt() {
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "SELECT * FROM driveselects";
    	ArrayList<AdminDriveSelectBean> list = new ArrayList<AdminDriveSelectBean>();
    	try {
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    	while(rs.next()) {
    		AdminDriveSelectBean bean = new AdminDriveSelectBean();
    		bean.setId(rs.getInt("id"));
    		bean.setDate(rs.getDate("reservation_date"));
    		bean.setModel(rs.getString("name"));
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
    
    public int updateSch(int id,AdminDriveSelectBean bean) {
    	PreparedStatement pstmt = null;
    	String sql = "UPDATE driveselects SET reservation_date=?, name=?,cc=?,color=?,grade=?,km=?,price=?,state=? WHERE id = ?";
    	int check = 0;
    	try {
    		pstmt = con.prepareStatement(sql);
    		pstmt.setDate(1,bean.getDate());
    		pstmt.setString(2,bean.getName());
    		pstmt.setInt(3,bean.getCc());
    		pstmt.setString(4,bean.getColor());
    		pstmt.setString(5,bean.getGrade());
    		pstmt.setInt(6, bean.getKm());
    		pstmt.setDouble(7,bean.getPrice());
    		pstmt.setInt(8, bean.isState() ? 1 : 0);
    		pstmt.setInt(9, id);
    		check = pstmt.executeUpdate();
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		close(pstmt);
    	}
    	return check;
    }
    
    public AdminDriveSelectBean selectDataById(int id) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        AdminDriveSelectBean bean = null;

        try {
            String sql = "SELECT * FROM driveselects WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                bean = new AdminDriveSelectBean();
                bean.setId(rs.getInt("id"));
                bean.setDate(rs.getDate("reservation_date"));
                bean.setModel(rs.getString("name"));
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
}
