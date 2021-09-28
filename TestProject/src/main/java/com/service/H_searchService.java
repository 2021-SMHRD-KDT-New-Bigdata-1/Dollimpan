package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.HospitalVO;

@WebServlet("/H_searchService")
public class H_searchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		//사용자가 입력한 이메일, pw받아오기
		String hos_name = request.getParameter("hos_name");
		String hos_addr = request.getParameter("hos_addr");
		
		memberDAO dao = new memberDAO();
		
		HospitalVO vo = dao.h_search(hos_name,hos_addr);



		if(vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			response.sendRedirect("VaccineRL2.jsp");
		}else {
			response.sendRedirect("VaccineRL2.jsp");
		}

	}
	
	}

