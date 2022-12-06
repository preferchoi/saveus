package com.example;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/Upload")
public class Upload extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String savePath = "C:\\Users\\smhrd\\Desktop\\새 폴더\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\SaveUS\\images";
		
//		C:\Users\smhrd\Desktop\새 폴더\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SaveUS\images
		
		int size = 10 * 1024 * 1024;

		String filename1 = "";

		MultipartRequest multi = new MultipartRequest(request, savePath, size, "UTF-8", new DefaultFileRenamePolicy());

		Enumeration files = multi.getFileNames();
		String file1 = (String) files.nextElement();
		filename1 = multi.getFilesystemName(file1);

		response.sendRedirect("smart.jsp?name="+filename1);
		response.sendRedirect("http://localhost:9000/trash_recognition");
	}

}
