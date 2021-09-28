package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.smhrd.HospitalVO;
import com.smhrd.UserVO;
	
	public class memberDAO {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		//db���� �޼ҵ�
		public void conn() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
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
		
		public int join(String user_id, String user_pw, String user_name, String email, String birth_date, String addr, String phone, String adm, String gender) { 
			int cnt = 0;
			try {
			
				conn();
				String sql = "insert into users values(?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
				
				psmt = conn.prepareStatement(sql); 
				psmt.setString(1, user_id); 
				psmt.setString(2, user_pw); 
				psmt.setString(3, user_name); 
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
					
					vo = new UserVO(user_id,user_pw,user_name,email,birth_date,addr,phone,adm,gender);
					//���ο� ������ Ÿ�� : VO
				}
				
				
			}catch(Exception e) { 
				e.printStackTrace();
			
			}finally {
				close();
			}
			return vo;
		}
		
public int delete(String user_id) {
			int cnt = 0;
			try {
						conn();
				
						String sql = "delete from users where user_id = ?"; 
						psmt = conn.prepareStatement(sql); 
							
						psmt.setString(1, user_id); 
					
						cnt = psmt.executeUpdate();
						
					}catch(Exception e) { 
						e.printStackTrace();
					
					}finally {
						close();
					}
					return cnt;
					
				}

public int update(String user_pw, String phone, String addr, String email, String user_id) {
	int cnt = 0;
try {
		
		conn();

		String sql = "update users set user_pw = ?, phone = ? , addr = ? email = ? where user_id = ?"; 
		psmt = conn.prepareStatement(sql); 
			
		psmt.setString(1, user_pw ); 
		psmt.setString(2, phone);
		psmt.setString(3, addr);
		psmt.setString(4, email);
		psmt.setString(5, user_id);
	
		cnt = psmt.executeUpdate();
		
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return cnt;
	
}

public HospitalVO h_search(String search) {
	HospitalVO vo = null;
try {
		
		conn();
	
		String sql = "select * from users where hos_name = ? and hos_addr = ?"; 
		psmt = conn.prepareStatement(sql); 
		psmt.setString(1, search);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
		//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
		
		if(rs.next()) {

			int hos_seq = rs.getInt(1);
			String hos_name = rs.getString(2);
			String hos_addr = rs.getString(3);
			String hos_phone = rs.getString(4);
			double latitude = rs.getDouble(5);
			double longitude = rs.getDouble(6);
			String hos_info = rs.getString(7);
			String hos_pic1 = rs.getString(8);
			String hos_pic2 = rs.getString(9);
			String hos_pic3 = rs.getString(10);
			vo = new HospitalVO(hos_seq,hos_name,hos_addr,hos_phone,latitude,longitude,hos_info,hos_pic1,hos_pic2,hos_pic3);
			//���ο� ������ Ÿ�� : VO
		}
		
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return vo;
}

public ArrayList<UserVO> select() {
	ArrayList<UserVO> al = new ArrayList<UserVO>();
try {
		
		conn();
		
		//message_member���̺��� email, pw�� �˻��Ͽ� ��ü ���� �ҷ�����
		String sql = "select user_id from users"; 
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery(); //Ŀ�� �̿�
		
		//������ �̵��� ��Ű�� �Ǳ� ������ �������� �ʾƵ� �� -> while�� �ʿ� x
		//�˻��� ���� ������ true, ��ġ���� ������ �˻�â�� ������� -> false
		
		while(rs.next()) { //Ŀ�� �̵�
			String user_id = rs.getString(1);
			String user_name = rs.getString(3);
			String email = rs.getString(4);
			String birth_date = rs.getString(5);
			String addr = rs.getString(6);
			String phone = rs.getString(7);
			String gender = rs.getString(9);
			
		
			//�� �����ֱ�
			UserVO vo = new UserVO(user_id,user_name,email,birth_date,addr,phone,gender);
			//�� �߰����ֱ�
			al.add(vo);
		}
		
	}catch(Exception e) { 
		e.printStackTrace();
	
	}finally {
		close();
	}
	return al;
}

public ArrayList<UserVO> select_admin() 
{
	ArrayList<UserVO> al = new ArrayList<UserVO>();
	
	try 
	{
		conn();
		String sql ="select user_id, user_name, email, birth_date, addr, phone, gender  from users where user_id is not null"; //  ����ڰ� �Է��� ���̵� �־���ϹǷ� ?
		psmt = conn.prepareStatement(sql);
					
		rs = psmt.executeQuery(); // �α��� ������ rs�� ��� �����ͺ��̽��� �����Ѵ�.

		while(rs.next())
		{
			String user_id = rs.getString(1);
			String user_name = rs.getString(2);
			String email =rs.getString(3);
			String birth_date=rs.getString(4);
			String addr=rs.getString(5);
			String phone=rs.getString(6);
			String gender=rs.getString(7);
			
			UserVO vo = new UserVO(user_id, user_name, email, birth_date, addr, phone, gender); // vo��� �̸��� ������ ���� email, tel, address ������ ��
			al.add(vo); // resultset���� �� �����µ� rs.next���� while���ȿ��� �ݺ��� �� vo�� ����ش�.
		}
	}
	catch (Exception e) 
	{
		e.printStackTrace();
	}
	finally
	{
		close();
	}
	return al;
}

	}
