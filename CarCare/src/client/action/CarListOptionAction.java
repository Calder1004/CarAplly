package client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.svc.CarListOptionService;
import client.vo.ActionForward;
import client.vo.CarListOptionBean;
import util.WrapperConverter;

public class CarListOptionAction implements Action {
	
	//service Á¢±ÙºÎ 
    private ArrayList<CarListOptionBean> getCarListOption(int carId,String brand,String model) throws Exception {
        CarListOptionService svc = new CarListOptionService();
        return svc.selectOptionCarList(carId,brand, model);
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
    	request.setCharacterEncoding("utf-8");
    	ActionForward forward = null;
        try {
        	int carId = WrapperConverter.parseInt.apply(request.getParameter("id"));
        	String brand = WrapperConverter.parseString.apply(request.getParameter("brand"));
        	String model = WrapperConverter.parseString.apply(request.getParameter("model"));

            ArrayList<CarListOptionBean> carListOption = getCarListOption(carId,brand,model);
            
            request.setAttribute("carListOption", carListOption);
            forward = new ActionForward("carListOption.jsp", false);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}

