package svc;
import static db.dbConn.*;
import java.sql.Connection;
import dao.CarDAO;
import vo.TestDriveBean;

public class TestDriveService {
    public boolean insertCarTest(TestDriveBean tdb) {
        CarDAO dao = CarDAO.getInstance();
        Connection con = getConnection();
        dao.setConnection(con);
        boolean isSuccess = false;
        int insertTestDriven = dao.insertFormat(tdb);

        tdb.setId(insertTestDriven);

        try {
            if (insertTestDriven > 0) {
                commit(con);
                isSuccess = true;
            } else {
                rollback(con);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con);
        }

        System.out.println("Insert success: " + isSuccess);
        System.out.println("Inserted TestDrive ID: " + tdb.getId());

        return isSuccess;
    }
}