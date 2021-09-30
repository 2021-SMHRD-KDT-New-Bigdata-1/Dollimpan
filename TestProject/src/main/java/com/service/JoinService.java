package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;




@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		//1. 사용자가 입력한 값 가져오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String email = request.getParameter("email");
<<<<<<< HEAD
		int birth_date = Integer.parseInt(request.getParameter("birth_date"));
=======
		int birth_date =Integer.parseInt(request.getParameter("birth_date"));
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-1/Dollimpan.git
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		String adm = request.getParameter("adm");
		String gender = request.getParameter("gender");
		
		
		memberDAO dao = new memberDAO();
		int cnt = dao.join(user_id, user_pw, user_name, email, addr, phone, adm, gender, birth_date);
		
		if(cnt>0) {
		response.sendRedirect("VaccineRL2.jsp");
		}else {
			System.out.println("실패했다 다시하라!");
		}
		
	}

	}


