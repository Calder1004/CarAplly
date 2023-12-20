package util;
import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class dbConnection {
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQLDB");
			con = ds.getConnection();
			con.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void close(Connection con) {
		
		try {
			if(con != null) con.close();
		} catch (Exception e) {
			System.out.println("close success");
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null) stmt.close();
		} catch (Exception e) {
			System.out.println("close success");
			e.printStackTrace();
		}
	}
		
	public static void close(ResultSet rs) {
		try {
			if(rs != null) rs.close();
			System.out.println("close success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			if(con!=null) con.commit();
			System.out.println("commit success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			if(con!=null) con.rollback();
			System.out.println("rollback success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}