package client.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.TestDriveService;
import client.vo.ActionForward;
import client.vo.TestDriveBean;
import util.ScriptWriter;
import util.WrapperConverter;

public class TestDriveAction implements Action {

	// service에 Bean에 담아서 insert
	private void insertTestDrive(int centerId, long kakaouserId, int caroptionId, java.sql.Date sqlDate) throws Exception {
		TestDriveService svc = new TestDriveService();
		TestDriveBean tdb = new TestDriveBean(centerId, kakaouserId, caroptionId, sqlDate);
		svc.insertCarTest(tdb);
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {

			ActionForward forward = null;
			int centerId = WrapperConverter.parseInt.apply(request.getParameter("centerId"));
			long kakaouserId = WrapperConverter.parseLong.apply(request.getParameter("kakaoId"));
			int caroptionId = WrapperConverter.parseInt.apply(request.getParameter("optionId"));
			String date = WrapperConverter.parseString.apply(request.getParameter("date"));

			
			java.util.Date utilDate = WrapperConverter.parseUtilDate.apply(date);
			java.sql.Date sqlDate = WrapperConverter.parseSqlDate.apply(date);
			
			boolean check = true;
			if(check) {
				insertTestDrive(centerId, kakaouserId, caroptionId,sqlDate);
				ScriptWriter.WriteFn(response.getWriter(), "예약신청 성공", "main.jsp");
			} else {
				ScriptWriter.WriteFn(response.getWriter(), "예약신청 실패", "main.jsp");
			}
			forward = new ActionForward("main.jsp", false);
			return forward;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}