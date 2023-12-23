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
            con.setAutoCommit(false);  // ����Ŀ�� ��带 ��Ȱ��ȭ

            // dao.admCrd() �޼��� ȣ�� �� ����� ����
            check = dao.admCrd(bean);

            if (check > 0) {
                commit(con);  // Ʈ����� Ŀ��
            } else {
                rollback(con);  // Ʈ����� �ѹ�
            }

        } catch (Exception e) {
            e.printStackTrace();
            rollback(con);  // ���� �߻� �� �ѹ�
        } finally {
            close(con);
        }


        return check == 1;
    }
}
