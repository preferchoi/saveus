package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProjectDAO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String pw = request.getParameter("pw");
		String emailid = request.getParameter("emailid");
		String emailadr = request.getParameter("emailadr");
		String tel_front = request.getParameter("tel_front");
		String tel_medium = request.getParameter("tel_medium");
		String tel_end = request.getParameter("tel_end");
		String addr = request.getParameter("addr");

		String tel = tel_front + "-" + tel_medium + "-" + tel_end;
		String email = emailid + "@" + emailadr;

		HttpSession session = request.getSession();
		String getId = (String) session.getAttribute("id");
		ProjectDAO dao = new ProjectDAO();
		int cnt = dao.Update(pw, email, tel, addr, getId);

		if (cnt > 0) {
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("수정 실패");
		}
	}

}
