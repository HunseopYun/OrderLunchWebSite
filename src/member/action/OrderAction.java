package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.ActionForward;
import member.model.OrderDTO;
import member.svc.OrderCheckService;
import member.svc.OrderService;

public class OrderAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		ActionForward af = null;

		String user_id = request.getParameter("user_id");
		String user_order = request.getParameter("user_order");

		OrderCheckService ocs = new OrderCheckService();

		boolean check = ocs.doCheck(user_id);
		if(check) {
			HttpSession order2 = request.getSession();
			order2.setAttribute("order2", 1);
			af = new ActionForward("index.jsp", false);
		}else {
			OrderDTO dto = new OrderDTO(user_id, user_order);
			OrderService os = new OrderService();
			boolean result = os.order(dto);

			if (result) {
				HttpSession order = request.getSession();
				order.setAttribute("order", 1);
				af = new ActionForward("index.jsp", false);
			} else {
				HttpSession order2 = request.getSession();
				order2.setAttribute("order2", 1);
				af = new ActionForward("index.jsp", false);
			}
		}




		return af;
	}

}
