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
    		ActionForward forward = null;// forward ��ü ����
        	String name = WrapperConverter.parseString.apply(request.getParameter("name"));
    

            // ����
            AdminProductWriteService svc = new AdminProductWriteService();
            int check = svc.insertBrand(name);

            if (check > 0) {
            	ScriptWriter.WriteFn(response.getWriter(), "�귣�� ��Ͽ� ����", "adminPostProduct.car");
            } else {
            	ScriptWriter.WriteFn(response.getWriter(), "�귣�� ��Ͽ� ����", "adminPostProduct.car");
            }


        return forward;
    }
}
