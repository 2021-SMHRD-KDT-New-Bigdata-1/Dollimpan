package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.UserVO;

@WebServlet("/FamilyService")
public class FamilyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("euc-kr");
		
//		String fam1 = request.getParameter("fam1");
//		String fam2 = request.getParameter("fam2");
//		String fam3 = request.getParameter("fam3");
//		String user_id = request.getParameter("user_id");
		String fam = request.getParameter("fam");
		
		HttpSession session = request.getSession(); 
		UserVO vo = (UserVO)session.getAttribute("vo"); 
		
		String user_id = vo.getUser_id();
		
		if(vo != null)
		{
//			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			response.sendRedirect("famView.jsp");
		}
		else
		{
			System.out.println("검색한 아이디가 없습니다.");
			response.sendRedirect("VaccineRL2.jsp");
			
		}
		
	}

}
