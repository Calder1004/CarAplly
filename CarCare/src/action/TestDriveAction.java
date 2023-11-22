package action;

import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.TestDriveBean;
import vo.ActionForward;

public class TestDriveAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        ActionForward forward = null;

        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            // 적절한 예외 처리를 수행
        }

        int centerId = Integer.parseInt(request.getParameter("center_id"));
        int userId = Integer.parseInt(request.getParameter("user_id"));
        int carId = Integer.parseInt(request.getParameter("car_id"));

        String dateString = request.getParameter("date");
        Date date = null;
        try {
            date = Date.valueOf(dateString);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            // 적절한 예외 처리를 수행
        }

        TestDriveBean tdb = new TestDriveBean(id, centerId, userId, carId, date);
        return forward;
    }

}