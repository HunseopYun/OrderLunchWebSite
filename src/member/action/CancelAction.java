package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.ActionForward;
import member.svc.CancleService;

public class CancelAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
			ActionForward af = null;
			String user_id = request.getParameter("user_id");
			String order_date = request.getParameter("user_date");
			CancleService svc = new CancleService();
			boolean check = svc.doCheck(user_id, order_date);

				if(check) {
					af = new ActionForward("index.jsp", false);
					request.setAttribute("message", "今日の注文を取り消しました。");
				}else {
					af = new ActionForward("index.jsp", false);
					request.setAttribute("message", "注文の取り消す過程でエラーが発生しました。");
				}
			return af;
	}

}
