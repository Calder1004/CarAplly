package svc;
import static db.dbConn.*;
import java.sql.Connection;
import dao.CarDAO;
import vo.TestDriveBean;

public class TestDriveService {
	public boolean registDog(TestDriveBean tdb) {
		CarDAO carDAO = CarDAO.getInstance();
		Connection con = getConnection();
		carDAO.setConnection(con);		
		boolean isSuccess = false;		
		int insertTestDriven = carDAO.insertFormat(tdb);
		if(insertTestDriven>0){
			commit(con);
			isSuccess=true;
		}else{
			rollback(con);
		}
		
		close(con);
		return isSuccess;
	}

}
