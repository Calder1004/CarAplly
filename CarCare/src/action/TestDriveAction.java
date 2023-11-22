package action;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.TestDriveService;
import vo.ActionForward;
import vo.TestDriveBean;

public class TestDriveAction implements Action {
	
	  @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	        request.setCharacterEncoding("utf-8");
	        ActionForward forward = null;

	        int centerId = Integer.parseInt(request.getParameter("center_id"));
	        int userId = Integer.parseInt(request.getParameter("user_id"));
	        int carId = Integer.parseInt(request.getParameter("car_id"));
	        String dateString = request.getParameter("date");

	        Date date = null;
	        try {
	            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
	            java.util.Date utilDate = dateFormat.parse(dateString);
	            date = new java.sql.Date(utilDate.getTime());
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.err.println("DEBUG: Invalid date string - " + dateString);
	        }
	        System.out.println("CenterID: " + centerId +
	                   ", UserID: " + userId +
	                   ", CarID: " + carId +
	                   ", Date: " + dateString);
	        TestDriveService service = new TestDriveService();
	        TestDriveBean tdb = new TestDriveBean(centerId, userId, carId, date);
	        service.insertCarTest(tdb);
	        forward = new ActionForward("main.jsp", false);
	        return forward;
	    }
}