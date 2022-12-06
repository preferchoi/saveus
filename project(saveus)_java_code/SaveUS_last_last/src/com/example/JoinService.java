package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ProjectDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birth_yy = request.getParameter("birth_yy");
		String birth_mm = request.getParameter("birth_mm");
		String birth_dd = request.getParameter("birth_dd");
		String emailid = request.getParameter("emailid");
		String emailadr = request.getParameter("emailadr");
		String tel_front = request.getParameter("tel_front");
		String tel_medium = request.getParameter("tel_medium");
		String tel_end = request.getParameter("tel_end");
		String addr = request.getParameter("addr");
		
		String tel=tel_front+"-"+tel_medium+"-"+tel_end;
		String email=emailid+"@"+emailadr;
		String birth= birth_yy+"/"+birth_mm+"/"+birth_dd;

		ProjectDAO dao = new ProjectDAO();
		int cnt=dao.Join(id, pw, name, gender, birth, email, tel, addr);

		if (cnt > 0) {
			response.sendRedirect("login.jsp");
		} else {
			System.out.println("회원가입 실패");
		}

	}

}
