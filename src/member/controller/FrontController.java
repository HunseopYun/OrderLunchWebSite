package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.Action;
import member.action.CancelAction;
import member.action.LoginAction;
import member.action.LogoutAction;
import member.action.OrderAction;
import member.action.RegisterAction;
import member.model.ActionForward;


/**
 * Servlet implementation class Frontcontroller
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		Action action = null;
		ActionForward af = null;


		if (command.equals("/login.do")) {
			action = new LoginAction();
			try {
				af = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else if (command.equals("/register.do")) {
			action = new RegisterAction();
			try {
				af = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else if (command.equals("/order.do")) {
			action = new OrderAction();
			try {
				af = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else if (command.equals("/logout.do")) {
			action = new LogoutAction();
			try {
				af = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if (command.equals("/cancel.do")) {
			action = new CancelAction();
		try {
			af = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

		if (af != null) {
			if (af.isRedirect()) {
				response.sendRedirect(af.getResUrl());
			} else {
				RequestDispatcher rdp = request.getRequestDispatcher(af.getResUrl());
				rdp.forward(request, response);
			}
		}

	}
}