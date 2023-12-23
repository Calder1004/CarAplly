package admin.svc;
import static util.dbConnection.*;

import java.sql.Connection;

import admin.vo.AdminUserBean;
import admin.dao.AdminDAO;
public class AdminCreateService {
	
    public boolean admCreated(AdminUserBean bean) {
        Connection con = getConnection();
        AdminDAO dao = AdminDAO.getInstance();
        dao.setConnection(con);
        int check = 0;

        try {
            con.setAutoCommit(false);  // 오토커밋 모드를 비활성화

            // dao.admCrd() 메서드 호출 및 결과값 저장
            check = dao.admCrd(bean);

            if (check > 0) {
                commit(con);  // 트랜잭션 커밋
            } else {
                rollback(con);  // 트랜잭션 롤백
            }

        } catch (Exception e) {
            e.printStackTrace();
            rollback(con);  // 예외 발생 시 롤백
        } finally {
            close(con);
        }


        return check == 1;
    }
}
