package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProjectDAO;

@WebServlet("/PlusService")
public class PlusService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ProjectDAO dao = new ProjectDAO();
		int cnt = dao.UpPoint(id);
		
		if (cnt > 0) {
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("수정 실패");
		}
	}

}
