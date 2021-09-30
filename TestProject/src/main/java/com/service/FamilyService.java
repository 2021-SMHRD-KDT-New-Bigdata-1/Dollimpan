package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.UserVO;
// searchFamily.jsp���� �Է��� ���� UserVO Ÿ�� ���� vo�� ���, ���ǿ� ����
@WebServlet("/FamilyService")
public class FamilyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("euc-kr");
		
		String fam = request.getParameter("fam");
		
		memberDAO dao = new memberDAO();	
		UserVO vo = dao.search_fl(fam);
		
		if(vo != null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo); // ���ǿ� vo ����
			response.sendRedirect("famView0.jsp");
		}
		else
		{
			System.out.println("�˻��� ���̵� �����ϴ�.");
			response.sendRedirect("VaccineRL2.jsp");
			
		}
		
	}

}
