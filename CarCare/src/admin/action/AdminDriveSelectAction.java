package admin.action;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminDriveSelectService;
import admin.vo.AdminDriveSelectBean;
import client.action.Action;
import client.vo.ActionForward;


public class AdminDriveSelectAction implements Action {
	

    private List<AdminDriveSelectBean> filter(List<AdminDriveSelectBean> driveList, String keyword) {
        return driveList.stream()
                .filter(drive -> drive.getName().toLowerCase().contains(keyword))
                .collect(Collectors.toList());
    }
    
    private long countFiltered(List<AdminDriveSelectBean> driveList, String keyword) {
        return driveList.stream()
                .filter(drive -> drive.getName().toLowerCase().contains(keyword))
                .count();
    }
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;

        try {
            AdminDriveSelectService svc = new AdminDriveSelectService();

            List<AdminDriveSelectBean> list = svc.AdminDss();
            request.setAttribute("list", list);

            String searchKeyword = request.getParameter("search");

            if (searchKeyword != null && !searchKeyword.isEmpty()) {
                List<AdminDriveSelectBean> filteredList = filter(list, searchKeyword.toLowerCase());
                long filteredCount = countFiltered(list, searchKeyword.toLowerCase());

                request.setAttribute("filteredList", filteredList);
                request.setAttribute("filteredCount", filteredCount);
            }

            forward = new ActionForward("dashboard.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
            forward = new ActionForward("error.jsp", true);
        }
        return forward;
    }
	
}
