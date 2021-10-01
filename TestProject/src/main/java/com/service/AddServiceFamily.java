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


@WebServlet("/AddServiceFamily")
public class AddServiceFamily extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String family_id = request.getParameter("family_id");
		String user_id = request.getParameter("user_id");
		
//		HttpSession session = request.getSession(); 
//		UserVO vo2 = (UserVO)session.getAttribute("vo2"); 
//		System.out.println("familyService : "+vo2);
//		String user_id = vo2.getUser_id(); // ���ǿ� id�� ���������Ƿ� getParameter�ʿ����
	
		memberDAO dao = new memberDAO();
		int cnt = dao.addfam(family_id, user_id);
		// �޾ƿ� family_id�� addfam()�Լ��� ���� family ���̺� �����Ѵ�.\
		System.out.println(cnt);
		
		if (cnt>0)
		{
			response.sendRedirect("Mypage.jsp");
		}
		else
		{
			System.out.println("����");
		}
				
		
	}

}
