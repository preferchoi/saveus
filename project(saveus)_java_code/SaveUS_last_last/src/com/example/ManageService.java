package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProjectDAO;

@WebServlet("/ManageService")
public class ManageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String point = request.getParameter("point");
		String id = request.getParameter("id");
		
		ProjectDAO dao = new ProjectDAO();
		int cnt = dao.manage(point, id);

		if (cnt > 0) {
			response.sendRedirect("selectMember.jsp");
		} else {
			System.out.println("수정 실패");
		}
	}

}
