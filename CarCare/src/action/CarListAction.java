package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CarListService;
import vo.ActionForward;
import vo.CarListBean;

public class CarListAction implements Action {

	// service 접근부 
    private ArrayList<CarListBean> getCarList() throws Exception {
        CarListService svc = new CarListService();
        return svc.selectCarList();
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = null;

        try {
            ArrayList<CarListBean> carList = getCarList(); // service 에서 getCarList 함수 호출/빈에 할당
            request.setAttribute("carList", carList); // set으로 내려줌
            
            forward = new ActionForward("carList.jsp", false);
        
        } catch (Exception e) {
            e.printStackTrace();
        }

        return forward;
    }
}
