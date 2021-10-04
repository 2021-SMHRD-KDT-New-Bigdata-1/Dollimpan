package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.UserVO;

@WebServlet("/IdSearchService")
public class IdSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String user_name = request.getParameter("user_name");
		String phone = request.getParameter("phone");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.idSearch(user_name, phone);
		if(cnt > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("user_name",user_name);
			response.sendRedirect("idChack.jsp");
		}else {
			System.out.print("검색 실패");
			response.sendRedirect("Search_IdPw.jsp");
		}
	
	}

}
