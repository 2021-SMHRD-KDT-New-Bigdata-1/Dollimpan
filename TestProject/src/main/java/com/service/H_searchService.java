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

@WebServlet("/H_searchService")
public class H_searchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user_pw = request.getParameter("hos_name");
		String phone = request.getParameter("hos_addr");
		
		HttpSession session = request.getSession(); 
		UserVO vo = (UserVO) session.getAttribute("vo"); 
		String user_id = vo.getUser_id();
		
		memberDAO dao = new memberDAO();
		int cnt = dao.h_search(user_pw, phone);
		
		if(cnt>0) {
			//수정하기 전의 데이터를 보여주기 때문에 세션 새롭게 생성
			UserVO vo2 = new UserVO(user_pw,phone);
			session.setAttribute("vo", vo2);
			
			response.sendRedirect("VaccineRL.html");
		}else {
			System.out.println("수정실패!");
			response.sendRedirect("VaccineRL.html");
		}
}
	
	}

}
