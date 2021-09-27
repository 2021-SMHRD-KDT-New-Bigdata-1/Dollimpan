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




@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �α����� �̸��� ���� ����ڰ� �Է��� pw,tel,address�� �����Ͻÿ�.
		
				//1. ����ڰ� �Է��� ��(getP)�� �α����� ����� �̸��ϰ�(getS)�� �������� (���� �ٸ���)
				String user_pw = request.getParameter("user_pw");
				String phone = request.getParameter("phone");
				String addr = request.getParameter("addr");
				String email = request.getParameter("email");
				
				HttpSession session = request.getSession(); 
				UserVO vo = (UserVO) session.getAttribute("vo"); //���ǿ� �� �־��ֱ�
				String user_id = vo.getUser_id();
				
				//2. jdbc�ڵ带 Ȱ���ؼ� update SQL�� ����ϱ�(JoinService)
				memberDAO dao = new memberDAO();
				int cnt = dao.update(user_pw, phone, addr, email,user_id);
				
				if(cnt>0) {
					//�����ϱ� ���� �����͸� �����ֱ� ������ ���� ���Ӱ� ����
					UserVO vo2 = new UserVO(user_pw,phone,addr,email);
					session.setAttribute("vo", vo2);
					
					response.sendRedirect("VaccineRL.html");
				}else {
					System.out.println("��������!");
					response.sendRedirect("VaccineRL.html");
				}
	}

}
