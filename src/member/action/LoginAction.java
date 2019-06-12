package member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.ActionForward;
import member.model.MemberDTO;
import member.svc.LoginService;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ActionForward af = null;
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");

		HttpSession session = request.getSession();
		LoginService ls = new LoginService();
		MemberDTO dto = ls.loginUser(user_id, user_name);

		if (dto != null) {

			HttpSession login = request.getSession();
			login.setAttribute("login", 1);

			session.setAttribute("session", dto);
			af = new ActionForward("index.jsp", true);
			String confirm="";
			confirm="0";
			session.setAttribute("sessionConfirm", confirm);



		} else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('社員番号 および、社員名が登録されていません。');");
			out.print("history.back();");
			out.print("</script>");
		}

		return af;

	}

}