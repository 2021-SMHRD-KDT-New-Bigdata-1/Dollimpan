<%@page import="com.DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/maicons.css" />
		<link rel="stylesheet" href="../assets/css/bootstrap.css" />
		<link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css" />
		<link rel="stylesheet" href="../assets/vendor/animate/animate.css" />
		<link rel="stylesheet" href="../assets/css/theme.css" />
		
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<link rel="stylesheet" href="css/style.css">
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	
	
	
  <!-- Back to top button -->
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
    </div> <!-- .topbar -->

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="#"><span class="text-primary">One</span>-Health</a>

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
              <a class="nav-link" href="about.html">약콕이란?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="VaccineRL.html">백신예약/조회</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="VaccineInfo.html">백신정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AD_FAQ.html">광고/FAQ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="FindPH.html">약국/병원찾기</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="#">로그인 / 회원가입</a>
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
            <li class="breadcrumb-item active" aria-current="page">Doctors</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">백신정보</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
   <div class="page-section bg-light">
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">00님이 예약하신 백신 정보입니다.</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th>No</th>
						      <th>백신명</th>
						      <th>백신코드</th>
						      <th>병원명</th>
						      <th>접종 주의사항</th>
						     
						    </tr>
						  </thead>
						  <tbody>
						    <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>독감</td>
						      <td>Flu</td>
						      <td>광주병원</td>
						      <td>
						      	<input type="button" id="check" class="btn btn-outline-primary" value="check"  style="float:center">
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">002</th>
						      <td>수두</td>
						      <td>Var</td>
						      <td>밝은내과</td>
						      <td>
						      	<input type="button" id="check" class="btn btn-outline-primary" value="check"  style="float:center">
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">003</th>
						      <td>대상포진</td>
						      <td>Hzv</td>
						      <td>해바라기의원</td>
						      <td>
						      	<input type="button" id="check" class="btn btn-outline-primary" value="check"  style="float:center">
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">004</th>
						      <td>폐렴구균</td>
						      <td>PPSV</td>
						      <td>풍암병원</td>
						      <td>
						      <input type="button" id="check" class="btn btn-outline-primary" value="check"  style="float:center">
				        	</td>
						    </tr>
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	