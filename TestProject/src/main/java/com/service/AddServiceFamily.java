package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;


@WebServlet("/AddServiceFamily")
public class AddServiceFamily extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String user_id = request.getParameter("user_id");
		String fam1 = request.getParameter("fam1");
		String fam2 = request.getParameter("fam2");
		String fam3 = request.getParameter("fam3");
		String fam4 = request.getParameter("fam4");
	
		memberDAO dao = new memberDAO();
		int cnt = dao.addfam(fam1, fam2, fam3, fam4, user_id);
		
		if (cnt>0)
		{
			response.sendRedirect("Mypage.jsp");
		}
		else
		{
			System.out.println("½ÇÆÐ");
		}
				
		
	}

}
