<%@page import="com.smhrd.FamilyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
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
		ArrayList<UserVO> vo1 = (ArrayList<UserVO>) session.getAttribute("vo1");
		UserVO vo = (UserVO)session.getAttribute("vo");
		FamilyVO fv = (FamilyVO)session.getAttribute("vo1");
	%>
	<%
		memberDAO dao = new memberDAO();
		//select��� ȣ��
		ArrayList<UserVO> al = dao.select();
		System.out.print(al.size());
	%>
	<div class="back-to-top"></div>

	<header>  
		<div class="topbar">
	      <div class="container" align="center">
	        <div class="row">
	          <div class="col-sm-8 text-sm">
	          </div>
	          <div class="col-sm-4 text-right text-sm">
	            <div class="social-mini-button">
	              <a href='Mypage.jsp'> ���������� </a>
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
	        <a class="navbar-brand" href="#"><span class="text-primary">Yak</span>-Kok</a>
	
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
	              <a class="nav-link" href="about.html">�����̶�</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineRl2.jsp">��ſ���/��ȸ</a>
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
	              <a class="btn btn-primary ml-lg-3" href="LogoutService">�α׾ƿ�</a>
	            </li>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- ��� bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="Update_0.jsp" name="Goods">ȸ���������� (Ŭ��)</a></li>

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
		
		
<%
if(vo != null){ 
	
	out.print("<div class='profileInfo'>�̸� :"+vo.getUser_name()+"</div>");
	out.print("<div class='profileInfo'>������� :"+vo.getBirth_date()+"</div>");
	out.print("<div class='profileInfo'>���̵� :"+vo.getUser_id()+"</div>");
}
%>

	</div>
	
	<div id="box02" class="ProfileItem">
		<a class="profileTitle" href="" title="">����ó �� �˸�</a>
		<%if(vo != null){ %> 
		<%out.print("<div class='profileInfo'>�̸��� :"+vo.getEmail()+"</div>"); %>
		<%out.print("<div class='profileInfo'>�޴���ȭ :"+vo.getPhone()+"</div>");
		} %>
	
	</div>
	
	<div id="box03" class="ProfileItem">
		<a class="profileTitle" title="">Family</a>
		<a href="addFamily.jsp">�߰��ϱ�</a>
		<div class="profileInfo">���ѱ�</div>
		<tr>
			<td> ���� 1 : <% out.print(vo.getUser_id()); %></td>
			<td> ���� 1 : <% out.print(fv.getFam1()); %></td>

	</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<div id="box04" class="ProfileItem">
		<a class="profileTitle" href="" title="">��������</a><br>
			<input type="text" id="sample4_postcode" placeholder="�����ȣ">
			<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
			<input type="text" id="sample4_roadAddress" placeholder="���θ��ּ�">
			<input type="text" id="sample4_jibunAddress" placeholder="�����ּ�">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="���ּ�">
			<input type="text" id="sample4_extraAddress" placeholder="�����׸�">
	</div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���� �׸� ����

                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<!-- ������� -->

<!-- mypage ���ø� -->
<!-- 
<div id="doc" class="yui-t7">
 
  <div id="bd">
    <div id="yui-main">
      <div class="yui-b">
        <div class="yui-g">
            
            <div class="yui-u first">
              <div class="content">����
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <li> �̸� �Է� </li>
              </div>
            </div>
            <div class="yui-u">
              <div class="content">��ȭ��ȣ</div>
            </div> <br>
          </div>
          <div class="yui-g">
            <div class="yui-u first">
              <div class="content">�Է��Ͻ� ������ȯ</div>
            </div>
            <div class="yui-u">
              <div class="content">�̸���</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

</div>
-->
<!-- ������� -->


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
       