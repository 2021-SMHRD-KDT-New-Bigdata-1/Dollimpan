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


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		//����ڰ� �Է��� �̸���, pw�޾ƿ���
		String email = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		memberDAO dao = new memberDAO();
		
		UserVO vo = dao.login(email, pw);
		
		if(vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("�α��ν���!");
			response.sendRedirect("index.html");
		}
	}

}
