<%@page import="com.DAO.memberDAO"%>
<%@page import="com.smhrd.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets_faq/css/style0.css">


<link rel="stylesheet" type="text/css" href="assets/css/faq.css">

<link rel="stylesheet" href="assets/css/maicons.css">

<link rel="stylesheet" href="assets/css/bootstrap.css">

<link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="assets/vendor/animate/animate.css">

<link rel="stylesheet" href="assets/css/theme.css">

<script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="assets/js/jquery-3.6.0.min.js"></script>


</head>
<body>

	
<div class="back-to-top"></div>

	<header>  
		<div class="topbar">
	      <div class="container">
	        <div class="row">
	          <div class="col-sm-8 text-sm">
	            <div class="site-info">
	              <a href="#"><span class="mai-call text-primary"></span> +00 123 4455 6666</a>
	              <span class="divider">|</span>
	              <a href="#"><span class="mai-mail text-primary"></span> mail@example.com</a>
	            </div>
	          </div>
	          <div class="col-sm-4 text-right text-sm">
	            <div class="social-mini-button">
	              <a href="#"><span class="mai-logo-facebook-f"></span></a>
	              <a href="#"><span class="mai-logo-twitter"></span></a>
	              <a href="#"><span class="mai-logo-dribbble"></span></a>
	              <a href="#"><span class="mai-logo-instagram"></span></a>
	            </div>
	          </div>
	        </div> <!-- .row -->
	      </div> <!-- .container -->
	    </div> 
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="VaccineRL.html"><span class="text-primary">Yak</span>-Kock</a>
	
	        <form action="#">
	          <div class="input-group input-navbar">
	            <div class="input-group-prepend">
	              <span class="input-group-text" id="icon-addon1"><span class="mai-search"></span></span>
	            </div>
	            <input type="text" class="form-control" placeholder="Enter keyword.." aria-label="Username" aria-describedby="icon-addon1">
	          </div>
	        </form>
	
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	              <a class="nav-link" href="about.html">약콕이란</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineRl.html">백신예약/조회</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineInfo.html">백신정보</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="Addform.jsp">광고/FAQ</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="FindPH.html">약국/병원찾기</a>
	            </li>
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="loginForm.html">로그인/회원가입</a>
	            </li>
	          	
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>

  <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">회원목록</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">회원관리페이지</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
   <div class="page-section bg-light">
<section class="ftco-section">
		<div class="container">
<%
			memberDAO dao = new memberDAO();
			//select기능 호출
			ArrayList<UserVO> al = dao.select();
			System.out.print(al.size());
		%>

			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th>No</th>
						      <th>ID</th>
						      <th>NAME</th>
						      <th>EMAIL</th>
						      <th>생년월일</th>
						      <th>주소</th>
						      <th>연락처</th>
						      <th>성별</th>
						     
						    </tr>
						   
						  </thead>
						  <tbody>
						   <tr class="alert" role="alert">
						    <th scope="row"></th>
						       <% 
								
								for (int i = 0; i<al.size(); i++){//회원의 수만큼 반복
									
									out.print("<tr>");
									out.print("<td>"+i+"</td>");
									out.print("<td>"+al.get(i).getUser_id()+"</td>");
									out.print("<td>"+al.get(i).getUser_name()+"</td>");
									out.print("<td>"+al.get(i).getEmail()+"</td>");
									out.print("<td>"+al.get(i).getBirth_date()+"</td>");
									out.print("<td>"+al.get(i).getAddr()+"</td>");
									out.print("<td>"+al.get(i).getPhone()+"</td>");
									out.print("<td>"+al.get(i).getGender()+"</td>");
									//a태그 생성될때마다 
									//쿼리스트링방식 : 사용자가 접근할 때 경우에 따라서 다른 결과를 보여줌(각 줄마다 email주소 다르게 보여줌)
									out.print("<td><a href = 'DeleteService?user_id="+al.get(i).getUser_id()+"'>삭제</a></td>");//각 줄마다 삭제버튼 생성
									out.print("</tr>");
									}
							%>
							
							 <!-- <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>독감</td>
						      <td>Flu</td>
						      <td>광주병원</td>
						      <td>
						      	<input type="button" id="check" class="btn btn-outline-primary" value="check"  style="float:center">
				        	</td>
						    </tr>
						     -->
						    </tr>
						  
						  
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	