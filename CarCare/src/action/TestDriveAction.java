package action;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.TestDriveService;
import vo.ActionForward;
import vo.TestDriveBean;

public class TestDriveAction implements Action {
	    
		// service�� Bean�� ��Ƽ� insert
		private void insertTestDrive(int centerId, long kakaouserId, int caroptionId, Date sqlDate) throws Exception {
	        TestDriveService svc = new TestDriveService();
	        TestDriveBean tdb = new TestDriveBean(centerId, kakaouserId, caroptionId, sqlDate);
	        svc.insertCarTest(tdb);
	    }

		 @Override
		    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		        try {
		            request.setCharacterEncoding("utf-8");
		            ActionForward forward = null;
		            int centerId = Integer.parseInt(request.getParameter("centerid"));
		            System.out.println("����:"+centerId);
		            long kakaouserId = Long.parseLong(request.getParameter("kakaoid"));
		            System.out.println("īī���������̵�:"+kakaouserId);
		            int caroptionId = Integer.parseInt(request.getParameter("optionId"));
		            System.out.println("�ɼ�:"+caroptionId);
		            String dateString = request.getParameter("date");
		            
		            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		            java.util.Date utilDate = formatter.parse(dateString);
		            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		            System.out.println();
		            insertTestDrive(centerId, kakaouserId, caroptionId, sqlDate);

		            forward = new ActionForward("main.jsp", false);
		            return forward;
		        } catch (Exception e) {
		            e.printStackTrace();
		            throw e;
		        }
		    }
		}