<%@page import="com.smhrd.UserVO"%>
<%@page import="com.smhrd.FamilyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
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

<% // UserVO vo = (UserVO)session.getAttribute("vo");%>
<%// session.getAttribute("vo"); %>
<% // famView���� ��ũ��Ʈ������ �Է��� fam���� �����´�.
	memberDAO dao = new memberDAO();
	String fam=request.getParameter("fam");
//	ArrayList<UserVO> al=dao.search_f(fam);
	ArrayList<UserVO> vo=dao.search_f(fam);
	System.out.print(vo.size());
%>


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
	              <a class="nav-link" href="html/about.html">�����̶�</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineRl.html">��ſ���/��ȸ</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineInfo.html">�������</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="Addform.jsp">����/FAQ</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="FindPH.html">�౹/����ã��</a>
	            </li>
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="html/about.html">�α׾ƿ�</a>
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
            <li class="breadcrumb-item active" aria-current="page">ȸ�����</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">ȸ������������</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
  <div class="page-section bg-light">
<section class="ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th> ���Ե� ID</th>
						      <th> �̸� </th>
						      <th> �߰����� </th>
						    </tr>
						  </thead>
						  <tbody>
						  
						  <tr>	
						  <% 
						  
						  for(int i=0; i<vo.size(); i++){
							  
							  String user_id = vo.get(i).getUser_id();
							  String user_pw = vo.get(i).getUser_pw();
							  
					//	  	out.print("<td>"+ vo.get(0).getUser_id()+ "</td>"); 
							out.print("<th>"+ user_id+ "</th>");
							out.print("<th>"+ user_pw+ "</th>");
					//	  	out.print("<td>"+ vo.get(0).getUser_name()+ "</td>");
						  	out.print("<th><a href='AddFamilyService?user_id="+user_id+"'> �����߰� </a></th>");					  
						  }
						  %>
						  <th> vo.get(0).getUser_id() </th>
						  </tr>
						  
						   <% 
									//a�±� �����ɶ����� 
									//������Ʈ����� : ����ڰ� ������ �� ��쿡 ���� �ٸ� ����� ������(�� �ٸ��� email�ּ� �ٸ��� ������)
								//	out.print("<td><a href = 'AddFamilyService?user_id="+fo.get(i).getUser_id()+"'>�����߰�</a></td>");//�� �ٸ��� ������ư ����
								
							%>
						  
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>



</body>
</html>