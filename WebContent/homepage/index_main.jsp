<%@page import="com.model.LibDTO"%>
<%@page import="com.model.ParkDTO"%>
<%@page import="com.model.FacilityDTO"%>
<%@page import="com.model.SchoolDTO"%>
<%@page import="com.model.ImdaeSearchDTO"%>
<%@page import="com.model.Rent_searchDTO"%>
<%@page import="com.model.Apt_name_searchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="com.model.MemberDTO"%>.
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>광주아파트가격예측</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
</head>
<style type="text/css">
	.navbar-brand{
		font-size : 30px;
		font-weight : bold;
	}
	.my-4{
		font-weight : bold;
	}
	.green_window {
		display: inline-block;
		width: 500px; height: 40px;
		border: 3px solid #1b5ac2;
		background: white;
	}
	.input_text {
		width: 480; height: 20px;
		margin: 6px 0 0 9px;
		border: 0;
		line-height: 20px;
		font-size: 14px;
		outline: none;
		float : left;
	}
	.sch_smit {
		width: 100px; height: 40px;
		margin: 0; border: 0;
		vertical-align: top;
		background: #1b5ac2;
		color: white;
		font-weight: bold;
		border-radius: 1px;
		cursor: pointer;
	}
	.SelectSearch{
		width: 120px; height: 40px;
		border: 3px solid #1b5ac2;
		background: white;
		vertical-align: top;
	}
	.unit{
		text-align: right;
		font-size : 12px;
	}
	table {
	width: 100%;
	height: 100px;
	margin: auto;
	text-align: left;
	}
	th {
	  width: 100px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}
	td {
	  width: 100px;
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}
	
	#basic, #junwall, #mat, #imdae {
		display: none;
}
</style>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Leader</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<%
						//전역 변수 만들어주기.
						MemberDTO info = (MemberDTO) session.getAttribute("info");
						Main_filterDAO dao = new Main_filterDAO();
						ArrayList<Main_filterDTO> AptSearchList = null;
						ArrayList<Main_filterDTO> DongSearchList = null;
						ArrayList<Rent_searchDTO> RentSearchList = null;
						ArrayList<Main_filterDTO> MatSearchList = null;
						ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;
						ArrayList<SchoolDTO> SchoolList = null;
						ArrayList<FacilityDTO> FacList = null;
						ArrayList<ParkDTO> ParkList = null;
						ArrayList<LibDTO> LibList = null; 
						
						String mat_select = null;

						if (info != null) {
							/*여긴 기본필터가 아닌 맞춤필터 시에 필요한 부분 */
						}%> <%if (info != null) {%>
					
					<li class="nav-item">
						<%if (info.getId().equals("admin")) {%> <a class="nav-link"
						href="select.jsp">회원정보 관리</a> <%}%>
					</li>
					<li class="nav-item"><a class="nav-link" href="favorite.jsp">즐겨찾기</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService.do">로그아웃</a></li>

					<%} else {%>
					<li class="nav-item"><a class="nav-link" href="join.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
					<%}%>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<br><br><br><br>
	<h2><b>조건에 맞는 집을 찾으시나요?</b></h2><br>
	
	<img src="../img/apt.jpg">



	<br>
	<br>
	<br>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/jquery/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$('#fake').click(function(){
			alert('로그인을해주세요');
		});
		$('#fake1').click(function(){
			alert('로그인을해주세요');
		});
		$('#fake2').click(function(){
			alert('로그인을해주세요');
		});
	</script>

</body>

</html>
