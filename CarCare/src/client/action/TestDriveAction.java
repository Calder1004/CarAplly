package client.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.TestDriveService;
import client.vo.ActionForward;
import client.vo.TestDriveBean;
import util.WrapperConverter;

public class TestDriveAction implements Action {

	// service�� Bean�� ��Ƽ� insert
	private void insertTestDrive(int centerId, long kakaouserId, int caroptionId, java.sql.Date sqlDate) throws Exception {
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

			String date = request.getParameter("date");
			
			java.util.Date utilDate = WrapperConverter.parseUtilDate.apply(date);
			java.sql.Date sqlDate = WrapperConverter.parseSqlDate.apply(date);
			
			boolean check = true;
			if(check) {
				response.setContentType("text/html;charset=utf-8");
				insertTestDrive(centerId, kakaouserId, caroptionId,sqlDate);
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('�����û�� �Ϸ�Ǿ����ϴ�')");
				out.println("</script>");
			} else {
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('�����û�� �����߽��ϴ�.')");
				out.println("</script>");
			}
			forward = new ActionForward("main.jsp", false);
			return forward;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}