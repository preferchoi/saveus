package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ProjectDAO;

@WebServlet("/PwCheckService")
public class PwCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw=request.getParameter("passw");
//		System.out.println(pw);
//		ProjectDAO dao = new ProjectDAO();
//		boolean check=dao.pwCheck(pw);
		
		//서버에서 ajax가 응답하는 코드
				response.setContentType("text/html; charset=euc-kr");
				PrintWriter out=response.getWriter();
//				if(check=true) {
					out.print(pw);
//				}
	}

}
