package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CarListOptionService;
import svc.CarListService;
import vo.ActionForward;
import vo.CarListBean;
import vo.CarListOptionBean;

public class CarListOptionAction implements Action {

	   @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	        ActionForward forward = null;
	        ArrayList<CarListOptionBean> carListOption;
	        
	        String brand = request.getParameter("brand");
	        String model = request.getParameter("model");
	        
	        CarListOptionService carListosv = new CarListOptionService();
	        carListOption = (ArrayList<CarListOptionBean>) carListosv.selectOptionCarList(brand, model);
	        System.out.println("CarListOptionAction - carListOption: " + carListOption);
	        request.setAttribute("carListOption", carListOption);
	        forward = new ActionForward("carListOption.jsp", false);

	        
	        return forward;
	    }

}

