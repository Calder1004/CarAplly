package client.action;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.TestDriveService;
import client.vo.ActionForward;
import client.vo.TestDriveBean;
import util.WrapperConverter;

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
		            int centerId = WrapperConverter.parseInt.apply(request.getParameter("centerId"));
		            long kakaouserId = WrapperConverter.parseLong.apply(request.getParameter("kakaoId"));
		            int caroptionId = WrapperConverter.parseInt.apply(request.getParameter("optionId"));
					/*
					 * int centerId = Integer.parseInt(request.getParameter("centerid")); long
					 * kakaouserId = Long.parseLong(request.getParameter("kakaoid")); int
					 * caroptionId = Integer.parseInt(request.getParameter("optionId"));
					 */
		            String date = request.getParameter("date");
		            
		            // date ���� ���  ����
		            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		            
		            // utildate�� ��ȯ
		            java.util.Date utilDate = formatter.parse(date);
		            // sqlDate�� ��ȯ
		            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		            
		            // param �� ���� svc��
		            insertTestDrive(centerId, kakaouserId, caroptionId, sqlDate);

		            forward = new ActionForward("main.jsp", false);
		            return forward;
		        } catch (Exception e) {
		            e.printStackTrace();
		            throw e;
		        }
		    }
		}