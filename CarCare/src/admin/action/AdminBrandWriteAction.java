package admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.svc.AdminProductWriteService;
import client.action.Action;
import client.vo.ActionForward;
import util.ScriptWriter;
import util.WrapperConverter;

public class AdminBrandWriteAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        	request.setCharacterEncoding("utf-8");
    		ActionForward forward = null;// forward 객체 생성
        	String name = WrapperConverter.parseString.apply(request.getParameter("name"));
    

            // 서비스
            AdminProductWriteService svc = new AdminProductWriteService();
            int check = svc.insertBrand(name);

            if (check > 0) {
            	ScriptWriter.WriteFn(response.getWriter(), "브랜드 등록에 성공", "adminPostProduct.car");
            } else {
            	ScriptWriter.WriteFn(response.getWriter(), "브랜드 등록에 실패", "adminPostProduct.car");
            }


        return forward;
    }
}
