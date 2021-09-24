package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.smhrd.UserVO;
	
	public class memberDAO {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		//db���� �޼ҵ�
		public void conn() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				
				String url = "jdbc:oracle:thin:project-db-stu.ddns.net:1524:xe";
				String dbid = "cgi_6_3";
				String dbpw = "smhrd3"; 
				conn = DriverManager.getConnection(url,dbid,dbpw);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		public void close() { //������ ���� �ݴ�� �ݱ�
			try {
				if(rs!=null) {
					rs.close();
				}
				if(psmt!=null) {
					psmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public int join(String user_id, String user_pw, String name, String email, String birth_date, String addr, String phone, String adm, String gender) { 
			int cnt = 0;
			try {
			
				conn();
				String sql = "insert into users values(?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
				
				psmt = conn.prepareStatement(sql); 
				psmt.setString(1, user_id); 
				psmt.setString(2, user_pw); 
				psmt.setString(3, name); 
				psmt.setString(4, email);
				psmt.setString(5, birth_date);
				psmt.setString(6, addr);
				psmt.setString(7, phone);
				psmt.setString(8, adm);
				psmt.setString(9, gender);
				cnt = psmt.executeUpdate();
			
			}catch(Exception e) { 
				e.printStackTrace();
				
			}finally {
				close();
			}
			return cnt;
			
		}
		public UserVO login(String user_id, String user_pw) {
			UserVO vo = null;
	try {
				
				conn();
			
				String sql = "select * from users where user_id = ? and user_pw = ?"; 
				psmt = conn.prepareStatement(sql); 
				psmt.setString(1, user_id);
				psmt.setString(2, user_pw);
				
				rs = psmt.executeQuery(); //Ŀ�� �̿�
				
				//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
				//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
				
				if(rs.next()) {

					String user_name = rs.getString(3);
					String email = rs.getString(4);
					String birth_date = rs.getString(5);
					String addr = rs.getString(6);
					String phone = rs.getString(7);
					String adm = rs.getString(8);
					String gender = rs.getString(9);
					
					vo = new UserVO();
					//���ο� ������ Ÿ�� : VO
				}
				
				
			}catch(Exception e) { 
				e.printStackTrace();
			
			}finally {
				close();
			}
			return vo;
		}
		
}
