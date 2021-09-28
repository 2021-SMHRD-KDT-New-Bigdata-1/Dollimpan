<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Goods</title>

<link rel="stylesheet" href="assets/css/maicons.css">

<link rel="stylesheet" href="assets/css/bootstrap.css">

<link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="assets/vendor/animate/animate.css">

<link rel="stylesheet" href="assets/css/theme.css">

<link rel="stylesheet" href="assets/css/styles_mp.css">

<link rel="stylesheet" href="assets/css/mypage.css">


</head>
<body>

	<%
		UserVO vo = (UserVO)session.getAttribute("vo");
	%>

	<div class="back-to-top"></div>

	<header>  
		<div class="topbar">
	      <div class="container" align="center">
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
	              <a href='Mypage.jsp'> 마이페이지 </a>
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
	        <a class="navbar-brand" href="#"><span class="text-primary">Yak</span>-Kock</a>
	
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
	              <a class="btn btn-primary ml-lg-3" href="#">로그아웃</a>
	            </li>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- 헤더 bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="Addform.jsp" name="Goods">회원정보수정 (클릭)</a></li>

          </ol>
       
        </nav>
        <h1 class="font-weight-normal">My Page</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
  <div class="page-section">
    <div class="container">

<!-- mypage -->
<div id="profilebox">
	<div id="box01" class="ProfileItem">
		<a class="profileTitle" href="" title="">MY PROFILE</a>
		<div class="profileInfo">이름 : </div>
		<div class="profileInfo">생년월일 : </div>
		<div class="profileInfo">아이디 : </div>
	</div>
	
	<div id="box02" class="ProfileItem">
		<a class="profileTitle" href="" title="">연락처 및 알림</a>
		<div class="profileInfo">연락처 이메일 : </div>
		<div class="profileInfo">알림 휴대전화 : </div>
	</div>
	
	<div id="box03" class="ProfileItem">
		<a class="profileTitle" href="" title="">가족관리</a>
		<div class="profileInfo">최한글</div>
		<div class="profileInfo">김정미</div>
		<div class="profileInfo">김동휘</div>
		<div class="profileInfo">김강휘</div>
	</div>
	
	<div id="box04" class="ProfileItem">
		<a class="profileTitle" href="" title="">지역설정</a>
		<div class="profileInfo">Description 1</div>
		<div class="profileInfo">Description 2</div>
		<div class="profileInfo">Description 3</div>
		<div class="profileInfo">Description 4</div>
	</div>
</div>
<!-- 여기까지 -->

<!-- mypage 템플릿 -->
<!-- 
<div id="doc" class="yui-t7">
 
  <div id="bd">
    <div id="yui-main">
      <div class="yui-b">
        <div class="yui-g">
            
            <div class="yui-u first">
              <div class="content">성함
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <li> 이름 입력 </li>
              </div>
            </div>
            <div class="yui-u">
              <div class="content">전화번호</div>
            </div> <br>
          </div>
          <div class="yui-g">
            <div class="yui-u first">
              <div class="content">입력하신 기저질환</div>
            </div>
            <div class="yui-u">
              <div class="content">이메일</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

</div>
-->
<!-- 여기까지 -->


      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(assets/img/banner-pattern.svg);">
  </div> <!-- .banner-home -->

  <footer class="page-footer">
    <div class="container">
      <div class="row px-md-3">
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Editorial Team</a></li>
            <li><a href="#">Protection</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>More</h5>
          <ul class="footer-menu">
            <li><a href="#">Terms & Condition</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Join as Doctors</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Our partner</h5>
          <ul class="footer-menu">
            <li><a href="#">One-Fitness</a></li>
            <li><a href="#">One-Drugs</a></li>
            <li><a href="#">One-Live</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">351 Willow Street Franklin, MA 02038</p>
          <a href="#" class="footer-link">701-573-7582</a>
          <a href="#" class="footer-link">healthcare@temporary.net</a>

          <h5 class="mt-3">Social Media</h5>
          <div class="footer-sosmed mt-3">
            <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-twitter"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-instagram"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
          </div>
        </div>
      </div>

      <hr>

      <p id="copyright">Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>
    </div> <!-- .container -->
  </footer> <!-- .page-footer -->

<script src="assets/js/jquery-3.5.1.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="assets/vendor/wow/wow.min.js"></script>

<script src="assets/js/theme.js"></script>
  
</body>
</html>
       