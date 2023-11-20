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
        ArrayList<CarListOptionBean> carOptionList;

        CarListOptionService carListosv = new CarListOptionService();
        carOptionList = carListosv.selectOptionCarList();

        request.setAttribute("carOptionList", carOptionList);
        forward = new ActionForward("carOptionList.jsp", false);

        return forward;
    }

}

