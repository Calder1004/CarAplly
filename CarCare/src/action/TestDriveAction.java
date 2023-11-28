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

	        int centerId = Integer.parseInt(request.getParameter("centerid"));
	        long kakaouserId = Long.parseLong((String)request.getParameter("kakaoid"));
	        int caroptionId = Integer.parseInt(request.getParameter("optionid"));
	        String dateString = request.getParameter("date");
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	        
	        java.util.Date utilDate = formatter.parse(dateString); // Parse the date using java.util.Date
	        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	        
	        System.out.println("centerId:"+centerId);
	        System.out.println("kakaouserId:" + kakaouserId);
	        System.out.println("caroptionId:" + caroptionId);
	        System.out.println("date:" + dateString);
	        

	
	        TestDriveService service = new TestDriveService();
	        TestDriveBean tdb = new TestDriveBean(centerId, kakaouserId, caroptionId, sqlDate);
	        service.insertCarTest(tdb);
	        forward = new ActionForward("main.jsp", false);
	        return forward;
	    }
}