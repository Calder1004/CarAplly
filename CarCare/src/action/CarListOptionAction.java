package action;

import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CarListOptionService;
import vo.ActionForward;
import vo.CarListOptionBean;

public class CarListOptionAction implements Action {
	
	//service Á¢±ÙºÎ 
    private ArrayList<CarListOptionBean> getCarListOption(String brand, String model) throws Exception {
        CarListOptionService carListosv = new CarListOptionService();
        return (ArrayList<CarListOptionBean>) carListosv.selectOptionCarList(brand, model);
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = null;

        try {
            String brand = URLDecoder.decode(request.getParameter("brand"), "UTF-8");
            String model = URLDecoder.decode(request.getParameter("model"), "UTF-8");

            ArrayList<CarListOptionBean> carListOption = getCarListOption(brand, model);

            request.setAttribute("carListOption", carListOption);
            forward = new ActionForward("carListOption.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}

