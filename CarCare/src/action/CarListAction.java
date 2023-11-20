package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CarListService;
import vo.ActionForward;
import vo.CarListBean;

public class CarListAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = null;
        ArrayList<CarListBean> carList;

        CarListService carListService = new CarListService();
        carList = carListService.selectCarList();

        request.setAttribute("carList", carList);
        forward = new ActionForward("carList.jsp", false);

        return forward;
    }

}
