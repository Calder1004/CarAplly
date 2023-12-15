package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;

public class AdminBrandWriteAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;// forward 객체 생성
        String name = request.getParameter("name");

        if (name != null && !name.isEmpty()) {
            System.out.println(name);

            // 서비스
            AdminProductWriteService svc = new AdminProductWriteService();
            int check = svc.insertBrand(name);

            if (check > 0) {
                response.setContentType("text/html;charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("<script>");
                out.println("alert('브랜드 등록에 성공하셨습니다')");
                out.println("window.location='adminPostProduct.car'");
                out.println("</script>");
            } else {
                response.setContentType("text/html;charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("<script>");
                out.println("alert('브랜드 등록에 실패하셨습니다')");
                out.println("window.location='adminPostProduct.car'");
                out.println("</script>");
            }
        }

        return forward;
    }
}
