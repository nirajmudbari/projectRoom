package com.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;
import com.model.LoginBean;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {

	public LoginServlet() {

	}

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pass = request.getParameter("password");

		// String[] vechiles = request.getParameterValues("vehicle");
		// for (String s : vechiles){
		// System.out.println(s);
		// }

		LoginBean loginBean = new LoginBean();

		loginBean.setEmail(email);
		loginBean.setPassword(pass);
		System.out.println("check000");
		String id = "";
		System.out.println("check");
		id = LoginDao.authenticateUser(loginBean);
		int str = loginBean.getId();


		String userValidate = LoginDao.authenticateUser(loginBean); // Calling
		// authenticateUser
		// function

		if (userValidate.equals("Admin")) {

			request.getRequestDispatcher("admin.jsp").forward(request, response);// RequestDispatcher
			
		}
		if (userValidate.equals("User")) {

			
			HttpSession session = request.getSession(true);
			session.setAttribute("user_id", loginBean.getId());
			session.setAttribute("user_email", loginBean.getEmail());
			request.getRequestDispatcher("afterlogin.jsp").forward(request, response);
			
		} else {
			request.setAttribute("errMessage", userValidate);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}
	}

}
