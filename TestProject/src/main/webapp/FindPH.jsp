<%@page import="com.smhrd.HospitalVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO1"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>One Health - Medical Center HTML5 Template</title>

  <link rel="stylesheet" href="./assets/css/maicons.css">

  <link rel="stylesheet" href="./assets/css/bootstrap.css">

  <link rel="stylesheet" href="./assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="./assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="./assets/css/theme.css">
<title>Insert title here</title>
</head>
<body>

<%
memberDAO1 dao = new memberDAO1();
	ArrayList<HospitalVO> sr = dao.search();
	System.out.print(sr.size());
%>

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
             <li class="nav-item"><a class="nav-link"
							href="html/about.html">약콕이란?</a></li>
						
						<li class="nav-item"><a class="nav-link"
							href="VaccineRL2.jsp">백신예약/조회</a></li>
							
						<li class="nav-item"><a class="nav-link"
							href="html/VaccineInfo.html">백신정보</a></li>
						
						<li class="nav-item"><a class="nav-link"
							href="html/AD_FAQ.html">광고/FAQ</a></li>
						
						<li class="nav-item active "><a class="nav-link"
							href="FindPH.jsp">약국/병원찾기</a></li>
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="html/loginForm.html">로그인/회원가입</a>
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
            <li class="breadcrumb-item"><a href="index.html">메인</a></li>
            <li class="breadcrumb-item active" aria-current="page">병원/약국찾기</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">병원/약국찾기</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">병원 찾기</h1>

      <form class="contact-form mt-5" action="H_searchService" id="frm">
        <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 wow fadeInUp">
			<input type="text" placeholder="병원/약국 검색" name="search">
			<input type="button" onclick="document.getElementById('frm').submit();"value="검색" >
			
			<li weight="300px;"><table class="table"></li>
						  <thead class="thead-dark">
						    <tr>
						      <th>순번</th>
						      <th>병원이름</th>
						      <th>백신명</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>병원명<p>주소주소주소주소주소</p></td>
						      <td>백신명</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>Mark<p>주소주소주소주소주소</p></td>
						      <td>백신</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>Mark<p>주소주소주소주소주소</p></td>	
						      <td>백신</td>
						    </tr>
						    <tr class="alert" role="alert">
						      <th scope="row">001</th>
						      <td>Mark<p>주소주소주소주소주소</p></td>
						      <td>백신</td>
						    </tr>
						  </tbody>
						</table>    
            <p class="text-grey mb-4">병원찾기/</p>
          </div>
          <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
            <div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdcd02ee018f3bbcd8d524e523cd8480"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(35.150537, 126.877636),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(35.150537, 126.877636); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,35.150537, 126.877636" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	    
	infowindow.open(map, marker); 
		
		/* var ps = new kakao.maps.services.Places(); 
		
		ps.keywordSearch('평택', placesSearchCB);
		
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();

		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.	LatLng(data[i].y, data[i].x));
		        }       

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		function displayMarker(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });

		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		} */
	</script>
          </div>
        </div>
      </div>
      </form>
    </div>
  </div>


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
    </div>
  </footer>

<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/google-maps.js"></script>

<script src="../assets/js/theme.js"></script>

</body>
</html>