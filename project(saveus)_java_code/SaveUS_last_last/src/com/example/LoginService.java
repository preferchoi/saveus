package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProjectDAO;
import com.VO.ProjectVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		ProjectDAO dao = new ProjectDAO();
		boolean check = dao.Login(id, pw);
		

		if (check) {
			HttpSession session = request.getSession();// 세션영역을 사용할 객체 생성
			session.setAttribute("id", id);
			response.sendRedirect("index.jsp");	
		} else {
			System.out.println("Login Failed");
			response.sendRedirect("login.jsp");
		}

	}

}
