package member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.ActionForward;
import member.model.MemberDTO;
import member.svc.RegisterService;

public class RegisterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		ActionForward af = null;
		

		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");

		MemberDTO dto = new MemberDTO(user_id, user_name);
		
		RegisterService rs = new RegisterService();
		boolean result = rs.register(dto);
		
		if (result) {
			HttpSession join = request.getSession();
			join.setAttribute("join", 1);
			af = new ActionForward("index.jsp", false);
			
		} else {
			HttpSession fail = request.getSession();
			fail.setAttribute("fail", 1);
			af = new ActionForward("join.jsp", false);
			
		}

		return af;
	}

}
