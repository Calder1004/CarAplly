package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CarListOptionService;
import vo.ActionForward;
import vo.CarListOptionBean;

public class CarListOptionAction implements Action {
	
	//service Á¢±ÙºÎ 
    private ArrayList<CarListOptionBean> getCarListOption(String brand, String model) throws Exception {
        CarListOptionService svc = new CarListOptionService();
        return svc.selectOptionCarList(brand, model);
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = null;

        try {
            String brand = request.getParameter("brand");
            String model = request.getParameter("model");

            ArrayList<CarListOptionBean> carListOption = getCarListOption(brand, model);

            request.setAttribute("carListOption", carListOption);
            forward = new ActionForward("carListOption.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}

