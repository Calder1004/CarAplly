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
	    
		// service에 Bean에 담아서 insert
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
		            
		            // date 포맷 방식  설정
		            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		            
		            // utildate로 변환
		            java.util.Date utilDate = formatter.parse(date);
		            // sqlDate로 변환
		            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		            
		            // param 값 전달 svc에
		            insertTestDrive(centerId, kakaouserId, caroptionId, sqlDate);

		            forward = new ActionForward("main.jsp", false);
		            return forward;
		        } catch (Exception e) {
		            e.printStackTrace();
		            throw e;
		        }
		    }
		}