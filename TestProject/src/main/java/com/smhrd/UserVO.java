package com.smhrd;

public class UserVO {

	

	private String user_id;
	private String user_pw;
	private String user_name;
	private String email;
	private String birth_date;
	private String addr;
	private String phone;
	private String adm;
	private String gender;
	
	public UserVO(String user_id, String user_pw, String user_name, String email, String birth_date, String addr,
			String phone, String adm, String gender) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.email = email;
		this.birth_date = birth_date;
		this.addr = addr;
		this.phone = phone;
		this.adm = adm;
		this.gender = gender;
	}
	
	public UserVO( String user_pw, String email, String addr, String phone) 
	{
		super();
	
		this.user_pw = user_pw;
		this.email = email;
		this.addr = addr;
		this.phone = phone;

	}
	public UserVO( String user_pw, String email, String addr, String phone, String user_id) 
	{
		super();
	
		this.user_pw = user_pw;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.user_id = user_id;
	}
	
	public UserVO(String user_id, String user_name, String email, String birth_date, String addr,
			String phone, String gender) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.email = email;
		this.birth_date = birth_date;
		this.addr = addr;
		this.phone = phone;
		this.gender = gender;
	}
	
	public UserVO() 
	{

	}
	
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAdm() {
		return adm;
	}
	public void setAdm(String adm) {
		this.adm = adm;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
