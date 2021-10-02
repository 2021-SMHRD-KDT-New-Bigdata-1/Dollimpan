
<%@page import="com.DAO.memberDAO"%>
<%@page import="com.smhrd.HospitalVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.UserVO"%>
<%@page import="com.smhrd.VaccineVO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title>One Health - Medical Center HTML5 Template</title>

<link rel="stylesheet" href="./assets/css/maicons.css">

<link rel="stylesheet" href="./assets/css/bootstrap.css">

<link rel="stylesheet"
	href="./assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="./assets/vendor/animate/animate.css">

<link rel="stylesheet" href="./assets/css/theme.css">
</head>
<body>

	<%
	memberDAO dao = new memberDAO();

	UserVO vo = (UserVO) session.getAttribute("vo");

	ArrayList<HospitalVO> sr = dao.search();

	ArrayList<VaccineVO> vc = dao.VaccineList();

	ArrayList<String> list = new ArrayList<String>();

	//  System.out.print(sr.size());  佐据 鯵呪
	// System.out.print(sr.get(1).getLatitude()); 砧腰属 佐据税 是亀葵
	%>


	<%
	sr.get(0).getHos_info().contains(vc.get(0).getVac_disease()); // 0腰属 赤澗佐据拭 偽姶戚 赤陥!
	%>


	<%
	/* System.out.println(sr.get(j).getHos_name()+":"+sr.get(j).getHos_info().contains(vc.get(i).getVac_disease())); */
	/* 
		String hos_view = null;
		int num = 0;

		System.out.println("=======================================");

		for (int j = 0; j < sr.size(); j++) {
			if (sr.get(j).getHos_info().indexOf("偽姶") > -1) {
		hos_view = sr.get(j).getHos_name();
		System.out.println("偽姶 佐据誤:" + hos_view);
		num++;
			}
		}
		System.out.println("偽姶 佐据呪:" + num);
	 */
	/*  System.out.println("=======================================");
	 for(int j=0;j<sr.size();j++){
		 if(sr.get(j).getHos_info().indexOf(vc.get(1).getVac_disease())>-1){
			hos_view = sr.get(j).getHos_name();
			System.out.println("督巨拷 佐据誤:"+hos_view);   				
			num++;
		  }
		 }
			System.out.println("督巨拷 佐据呪:"+num); */
	%>
	<!--  -->
	<%-- 
  							<%for(int i =0; i<sr.size();i++) %>
   							 <% for(int i=0;i<5;i++){  %> 
						    	positions[<%=i%>] = {
								   title:  '<%=sr.get(i).getHos_name()%>',
								   latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
								};  
						   
						   <% } %>  
    --%>

	<!-- Back to top button -->
	<div class="back-to-top"></div>


	<header>

		<div class="col-sm-8 text-sm">
			<!-- 戚惟 赤生檎 原戚凪戚走亜 神献楕生稽 腔顕 -->

			<!-- .row -->
		</div>
		<!-- .container -->

		<!-- .topbar 切軒 -->

		<nav class="navbar navbar-expand-lg navbar-light shadow-sm">
			<div class="container">
				<a class="navbar-brand" href="VaccineRL2.jsp"><span
					class="text-primary">Yak</span>-Kok</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupport" aria-controls="navbarSupport"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupport">
					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a class="nav-link"
							href="html/about.html">鉦壷戚空?</a></li>

						<li class="nav-item active"><a class="nav-link"
							href="VaccineRL2.jsp">拷重森鉦/繕噺</a></li>

						<li class="nav-item"><a class="nav-link"
							href="html/VaccineInfo.html">拷重舛左</a></li>

						<li class="nav-item"><a class="nav-link"
							href="html/AD_FAQ.html">韻壱/FAQ</a></li>

						<li class="nav-item "><a class="nav-link" href="FindPH.jsp">鉦厩/佐据達奄</a></li>

						<%
						if (vo == null) { //稽益昔 穿
							out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href='html/loginForm.html'>稽益昔/噺据亜脊</a></li>");
						} else {
							//淫軒切 域舛生稽 稽益昔 梅聖 井酔 乞窮 噺据舛左 瑳 呪 赤亀系
							//稽益昔廃 噺据税 戚五析戚 admin昔 井酔拭澗 噺据穿端鯉系戚 左戚惟 
							//稽益昔廃 噺据税 戚五析戚 析鋼 噺据昔 井酔拭澗 噺据舛左 呪舛戚 左戚惟
							if (vo.getUser_id().equals("admin")) {
								out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href = 'selectUser.jsp'>噺据穿端鯉系</a>");
							} else {
								out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='Mypage.jsp'>原戚凪戚走</a>");
							}
							out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='LogoutService'>稽益焼数</a>");
						}
						%>


					</ul>
				</div>
				<!-- .navbar-collapse -->
			</div>
			<!-- .container -->
		</nav>
	</header>

	<div class="page-hero bg-image overlay-dark"
		style="background-image: url(./assets/img/bg_image_1.jpg);">
		<div class="hero-section">
			<div class="container text-center wow zoomIn">
				<span class="subhead">Let's make your life happier</span>
				<h1 class="display-4">
					Welcome to <span class="text-primary">Yak</span>-Kok
					<%
				if (vo == null) {
					out.print("<h1>稽益昔 廃 室芝焼戚巨研 窒径背爽室推</h1>");
				} else {
					out.print("<h1>" + vo.getUser_name() + "還 発慎杯艦陥.</h1>");
				}
				%>
				</h1>
				<a href="#" class="btn btn-primary">Let's Consult</a>
			</div>
		</div>
	</div>


	<div class="bg-light">
		<div class="page-section py-3 mt-md-n5 custom-index">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-4 py-3 py-md-0">
						<div class="card-service wow fadeInUp">
							<div class="circle-shape bg-primary text-white">
								<span class="mai-shield-checkmark"></span>
							</div>
							<a class="nav-link" href="VaccineRL.html"><p>拷重 森鉦</p></a>

						</div>
					</div>
					<div class="col-md-4 py-3 py-md-0">
						<div class="card-service wow fadeInUp">
							<div class="circle-shape bg-accent text-white">
								<span class="mai-basket"></span>
							</div>
							<a class="nav-link" href="FindPH.html"><p>鉦厩,佐据達奄</p></a>
						</div>
					</div>
					<div class="col-md-4 py-3 py-md-0">
						<div class="card-service wow fadeInUp">
							<div class="circle-shape bg-secondary text-white">
								<span class="mai-chatbubbles-outline"></span>
							</div>
							<a class="nav-link" href="AD_FAQ.html"><p>FAQ</p></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .page-section -->


		<!-- 砧腰属 悉芝 -->

		<div class="page-section"">
			<div class="container">
				<h1 class="text-center wow fadeInUp"></h1>

				<form class="contact-form mt-5">
					<div class="container">
						<div class="row align-items-center">


							<%
							if (vo != null) {
							%>
							<div class="page-section"">
								<div class="container">
									<h1 class="text-center wow fadeInUp"></h1>

									<form class="contact-form mt-5">
										<div class="container">
											<div class="row align-items-center">

												<div class="col-lg-6 py-3 wow fadeInUp" id="menu"
													style="height: 500px; overflow: auto">
													<section>
														<header>
															<h2>拷重 軒什闘</h2>
															<br>
														</header>
														<ul class="dates">

															<li><span class="date"><h4>
																		<strong>偽姶</strong>
																	</h4></span> <span> / 20~65室戚雌</span> <span> /古鰍 1噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="#">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>督雌燃</strong>
																	</h4></span> <span> / 20~65室戚雌</span> <span> / 1噺 羨曽 板 10鰍原陥
																	1噺</span>

																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>A莫娃唇</strong>
																	</h4></span> <span> / 20室~40室</span> <span> / 2噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>B莫娃唇</strong>
																	</h4></span> <span> / 20室~65室戚雌</span> <span> / 牌端 伊紫 板 3噺
																	羨曽</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>二慧姥液</strong>
																	</h4></span> <span> / 20室~65室戚雌</span> <span> / 是蝿浦拭 企背 1噺
																	暁澗 2噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>呪砧</strong>
																	</h4></span> <span> / 20室~50室</span> <span> / 牌端伊紫 板 2噺 羨曽</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>畠蝕/政楳失戚馬識唇(瑳暗軒)/燃遭</strong>
																	</h4></span> <span> / 20室~50室</span> <span> / 是蝿浦拭 企背 1噺 暁澗
																	2噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>紫寓政砧曽郊戚君什姶唇装</strong>
																	</h4></span> <span> / 25室~26室 食失, 害失税 尻敬 巷淫</span> <span> /
																	恥 3噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>企雌匂遭</strong>
																	</h4></span> <span> / 幻 60室 戚雌</span> <span> / 1噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>呪厳姥液</strong>
																	</h4></span> <span> / 20室~65室戚雌</span> <span> / 是蝿浦拭 企背
																	1噺~2噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
															<li><span class="date"><h4>
																		<strong>b莫伯乞什昔巴欠殖切</strong>
																	</h4></span> <span> / 20室~65室戚雌</span> <span> / 是蝿浦拭 企背
																	1噺~3噺</span>
																<h3>
																	<button class="btn btn-primary ml-lg-3" type="button"
																		onclick="test()">森鉦馬奄</button>
																</h3>
														</ul>
													</section>
												</div>
											</div>
										</div>
									</form>

									<div class="col-lg-6 py-3 wow fadeInUp" id="menu"
										style="height: 500px; overflow: auto">
										<section>

											<header>
												<h2>佐据 鯉系!</h2>
												<br>
											</header>



											<div>
												<ul class="links">
													<%
													String hos_view = null;
													int num = 0;
													for (int j = 0; j < 108; j++) {
														if (sr.get(j).getHos_info().indexOf("偽姶") > -1) {
													%>

													<li><span class="date"><h4>
																<strong><%=sr.get(j).getHos_name()%></strong>
															</h4></span> <span><%=sr.get(j).getHos_addr()%></span>
														<h3>
															<a href="#menu1">森鉦馬奄</a>
														</h3> 
														<%}%>
															<%}%>
															 
																 <%}%> 
															
															 
 <%-- 	while(true){ 
								if(sr.get(num).getHos_info().indexOf("偽姶") > -1){%>
												
								<li><span class="date"><h4>
									<strong><%=sr.get(num).getHos_name() %></strong>
										</h4></span> <span><%=sr.get(num).getHos_addr() %></span>
													<h3>
														<a href="#menu1">森鉦馬奄</a>
													</h3>
								<%num++;%>
								
										
								<%}%>
								<%}%>
							<%}%> --%> <%-- 								for (int j = 0; j < 108; j++) {
							if (sr.get(j).getHos_info().indexOf("偽姶") > -1) {%>
								
								<li><span class="date"><h4>
												<strong><%=sr.get(j).getHos_name() %></strong>
											</h4></span> <span><%=sr.get(j).getHos_addr() %></span>
										<h3>
											<a href="#menu1">森鉦馬奄</a>
										</h3> --%> <!-- <li><span class="date"><h4>
																		<strong>悪番佐据</strong>
																	</h4></span> <span> / 爽社爽社爽社爽社爽社爽社</span> <span> /
																	左虞照引</span> <span> / 15000据</span>
																<h3>
																	<a href="#">森鉦馬奄</a>
																</h3>
																<p>羨曽 薄伐: 0噺</p></li>
			
															<li><span class="date"><h4>
																		<strong>B莫娃唇</strong>
																	</h4></span> <span> / 20室</span> <span> / 歯酔軒佐据</span> <span>
																	/ 3000据</span>
																<h3>
																	<a href="#">森鉦馬奄</a>
																</h3>
																<p>羨曽 薄伐: 0噺</p></li> -->
												</ul>
											</div>
										</section>

									</div>
								</div>
							</div>
						</div>
					</div>
				</form>



							<section>

								<div class="page-section"">
									<div class="container">
										<h1 class="text-center wow fadeInUp"></h1>

										<form class="contact-form mt-5">
											<div class="container">
												<div class="row align-items-center">

													<div class="col-lg-6 wow fadeInRight"
														data-wow-delay="400ms">
														<div id="map" style="width: 1200px; height: 500px;"></div>

														<!-- 朝朝神api -->

														<script
															src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e60e4953eacaad49c868ca0dcc884f1e"></script>
														<script>
                        var mapContainer = document
                        .getElementById('map'), // 走亀研 妊獣拝 div 
                  mapOption = {
                     center : new kakao.maps.LatLng(
                           35.151980098317935, 126.88980055854985), // 走亀税 掻宿疎妊
                     level : 4, // 走亀税 溌企 傾婚
                     mapTypeId : kakao.maps.MapTypeId.ROADMAP
                  // 走亀曽嫌
                  };

						// 走亀研 持失廃陥 
						var map = new kakao.maps.Map(mapContainer,
								mapOption);
						
						   /* { title: '悦鍵因据', latlng: new kakao.maps.LatLng(35.118446, 126.866408) }*/
											
						// var positions[] = new var[sr.size()];
						
						   
						   
						   
							  var positions = [
									    {
									        title: '庚慎掘 舛莫須引', latlng: new kakao.maps.LatLng(35.145855, 126.857507)
									    },
									    
									    {
									        title: '韻爽 誌失佐据', 
									        latlng: new kakao.maps.LatLng(35.171491, 126.866726)
									    },
									    
									    {
									        title: '獣据佐据', 
									        latlng: new kakao.maps.LatLng(35.152658, 126.848934)
									    }
									]; 
									
						    
					    var positions = new Array();
						    

						 <%// System.out.println("佐据呪 : "+sr.size());%>
						 
						   <%for (int i = 0; i < 5; i++) {%> 
						    	positions[<%=i%>] = {
								   title:  '<%=sr.get(i).getHos_name()%>',
								   latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
								};  
						 	   
								   <%}%> 
						   
						// 原朕 戚耕走税 戚耕走 爽社脊艦陥
						var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
						   
						console.log(positions.length);
						for (var i = 0; i < positions.length; i ++) {
						    
						    // 原朕 戚耕走税 戚耕走 滴奄 脊艦陥
						    var imageSize = new kakao.maps.Size(24, 35); 
						    
						    // 原朕 戚耕走研 持失杯艦陥    
						    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
							console.log("for庚獣拙");
						    console.log(positions[i].latlng);
						    // 原朕研 持失杯艦陥
						    var marker = new kakao.maps.Marker({
						        map: map, // 原朕研 妊獣拝 走亀
						        position: positions[i].latlng, // 原朕研 妊獣拝 是帖
						        title : positions[i].title, // 原朕税 展戚堂, 原朕拭 原酔什研 臣軒檎 展戚堂戚 妊獣桔艦陥
						        image : markerImage // 原朕 戚耕走 
						    
						   
						        
						    });
						    
						    marker.setMap(map);

						    var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">笛走亀左奄</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">掩達奄</a></div>', // 昔匂制亀酔拭 妊窒吃 鎧遂生稽 HTML 庚切伸戚蟹 document element亜 亜管杯艦陥
						        iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //昔匂制亀酔 妊獣 是帖脊艦陥
                    
						    // 昔匂制亀酔研 持失杯艦陥
						    var infowindow = new kakao.maps.InfoWindow({
						        position : iwPosition, 
						        content : iwContent 
						    });
						      
						    // 原朕 是拭 昔匂制亀酔研 妊獣杯艦陥. 砧腰属 督虞耕斗昔 marker研 隔嬢爽走 省生檎 走亀 是拭 妊獣桔艦陥
						    infowindow.open(map, marker); 
						}
						
								</script>
													</div>
												</div>
											</div>
										</form>
									</div>

								</div>
						


						<div class="page-section pb-0">
							<div class="container">
								<div class="row align-items-center">
									<div class="col-lg-6 py-3 wow fadeInUp">
										<h1>
											Welcome to Your Health <br> Center
										</h1>
										<p class="text-grey mb-4">Lorem ipsum dolor sit amet,
											consetetur sadipscing elitr, sed diam nonumy eirmod tempor
											invidunt ut labore et dolore magna aliquyam erat, sed diam
											voluptua. At vero eos et accusam et justo duo dolores et ea
											rebum. Accusantium aperiam earum ipsa eius, inventore nemo
											labore eaque porro consequatur ex aspernatur. Explicabo,
											excepturi accusantium! Placeat voluptates esse ut optio
											facilis!</p>
										<a href="about.html" class="btn btn-primary">Learn More</a>
									</div>



								</div>

								<div class="page-section banner-home bg-image"
									style="background-image: url(../assets/img/banner-pattern.svg);">
									<div class="container py-5 py-lg-0">
										<div class="row align-items-center">
											<div class="col-lg-4 wow zoomIn"></div>
										</div>
									</div>
								</div>
								<!-- .banner-home -->
							</div>
						</div>



						<!-- 森鉦 切軒 隔聖員. -->




						<div class="page-section bg-light">
							<div class="container">
								<h1 class="text-center wow fadeInUp">SHOP</h1>
								<div class="row mt-5">
									<div class="col-lg-4 py-2 wow zoomIn">
										<div class="card-blog">
											<div class="header">
												<div class="post-category">
													<a href="#">慎丞薦</a>
												</div>
												<a href="blog-details.html" class="post-thumb"> <img
													src="../assets/img/blog/blog_1.jpg" alt="">
												</a>
											</div>
											<div class="body">
												<h5 class="post-title">
													<a href="blog-details.html">List of Countries without
														Coronavirus case</a>
												</h5>
												<div class="site-info">
													<div class="avatar mr-2">
														<div class="avatar-img">
															<img src="../assets/img/person/person_1.jpg" alt="">
														</div>
														<span>Roger Adams</span>
													</div>
													<span class="mai-time"></span> 1 week ago
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 py-2 wow zoomIn">
										<div class="card-blog">
											<div class="header">
												<div class="post-category">
													<a href="#">拍什左繕奄奄</a>
												</div>
												<a href="blog-details.html" class="post-thumb"> <img
													src="../assets/img/blog/blog_2.jpg" alt="">
												</a>
											</div>
											<div class="body">
												<h5 class="post-title">
													<a href="blog-details.html">Recovery Room: News beyond
														the pandemic</a>
												</h5>
												<div class="site-info">
													<div class="avatar mr-2">
														<div class="avatar-img">
															<img src="../assets/img/person/person_1.jpg" alt="">
														</div>
														<span>Roger Adams</span>
													</div>
													<span class="mai-time"></span> 4 weeks ago
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 py-2 wow zoomIn">
										<div class="card-blog">
											<div class="header">
												<div class="post-category">
													<a href="#">闇悪左蝿</a>
												</div>
												<a href="blog-details.html" class="post-thumb"> <img
													src="../assets/img/blog/blog_3.jpg" alt="">
												</a>
											</div>
											<div class="body">
												<h5 class="post-title">
													<a href="blog-details.html">What is the impact of
														eating too much sugar?</a>
												</h5>
												<div class="site-info">
													<div class="avatar mr-2">
														<div class="avatar-img">
															<img src="../assets/img/person/person_2.jpg" alt="">
														</div>
														<span>Diego Simmons</span>
													</div>
													<span class="mai-time"></span> 2 months ago
												</div>
											</div>
										</div>
									</div>

									<div class="col-12 text-center mt-4 wow zoomIn">
										<a href="blog.html" class="btn btn-primary">Read More</a>
									</div>

								</div>
							</div>
						</div>
						<!-- .page-section -->


						<!-- .page-section -->

						<div class="page-section banner-home bg-image"
							style="background-image: url(./assets/img/banner-pattern.svg);">
							<div class="container py-5 py-lg-0">
								<div class="row align-items-center">
									<div class="col-lg-4 wow zoomIn">
										<div class="img-banner d-none d-lg-block">
											<img src="./assets/img/mobile_app.png" alt="">
										</div>
									</div>
									<div class="col-lg-8 wow fadeInRight">
										<h1 class="font-weight-normal mb-3">乞郊析 鉦壷聖 陥錘閤生室推!</h1>
										<a href="#"><img src="./assets/img/google_play.svg" alt=""></a>
										<a href="#" class="ml-2"><img
											src="./assets/img/app_store.svg" alt=""></a>
									</div>
								</div>
							</div>
						</div>
						<!-- .banner-home -->

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
										<p class="footer-link mt-2">351 Willow Street Franklin, MA
											02038</p>
										<a href="#" class="footer-link">701-573-7582</a> <a href="#"
											class="footer-link">healthcare@temporary.net</a>

										<h5 class="mt-3">Social Media</h5>
										<div class="footer-sosmed mt-3">
											<a href="#" target="_blank"><span
												class="mai-logo-facebook-f"></span></a> <a href="#"
												target="_blank"><span class="mai-logo-twitter"></span></a> <a
												href="#" target="_blank"><span
												class="mai-logo-google-plus-g"></span></a> <a href="#"
												target="_blank"><span class="mai-logo-instagram"></span></a>
											<a href="#" target="_blank"><span
												class="mai-logo-linkedin"></span></a>
										</div>
									</div>
								</div>

								<hr>

								<p id="copyright">
									Copyright &copy; 2020 <a href="https://macodeid.com/"
										target="_blank">MACode ID</a>. All right reserved
								</p>
							</div>
						</footer>

						<!-- <script src="assets/js/jquery-3.5.1.min.js"></script>

						<script src="assets/js/bootstrap.bundle.min.js"></script>

						<script
							src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

						<script src="assets/vendor/wow/wow.min.js"></script>

						<script src="assets/js/theme.js"></script>
 -->
						<script>
												
												
												
    	//var here = document.getElementById('here').value;
    	//console.log("here ", here); //剰亀 走榎 窒径 照鞠壱赤倉? 益訓依 旭焼推 せせせ 戚惟 悪番亜 拝凶 陥献識持還戚 溌昔馬獣檎辞 幻窮坪球級脊艦陥 ぞぞ 古酔 嬢憩樫 推舛還臆亀?? せせ雁尻馬閃 煽澗 困殖球 楕戚虞 拭戚詮什澗 慎 歌...斐製 益軍 析舘 爽汐坦軒 背獄形醤畏陥!
    			//拭跡 侯虞 ぞぞぞぞ  右諾焼推!!! 壱原趨推 ぞぞ せせせせせ焼戚壱 阻勺背推 旬 稲 神叔暗拭食./.顎!!!
    			
    			
    	/* 
    function test() {
    	var here = document.getElementById('here').value;
    	
        if ($('#menu').css('display') == 'block') {
           $('#menu').css('display' , 'none')
            $('#menu1').css('display', 'block');
        } else {
            $('#(焼戚巨誤)').css('display', 'block');
        }
        
        $.ajax({
        	type : 'get',
        	url : 'Hr_search',
        	data : here,
        	dataType : 'text',
        	success : function(data){
        		alert("左鎧奄 失因");
        	},
        	error : function(){
        		alert("左鎧奄 叔鳶");
        	}
        })
    } */
</script>
</body>
</html>