<%@page import="com.model.Apt_name_searchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>APT Homepage</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="./main.css" rel="stylesheet">

<style type="text/css">
table, td {
	border: 1px solid red;
}

table {
	width: 60%;
	height: 100px;
	margin: auto;
	text-align: center;
}
</style>

</head>

<body>

	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		Main_filterDAO dao = new Main_filterDAO();
		ArrayList<Main_filterDTO> AptSearchList = null;
		ArrayList<Main_filterDTO> DongSearchList = null;
		
		if(info != null) {
			/*여긴 기본필터가 아닌 맞춤필터 시에 필요한 부분 */
		}
			
		%>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">조이름</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- 회원가입 및 마이페이지 -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">메인
							<span class="sr-only">(current)</span>
					</a></li>

					<%if (info != null) {%>
					<li class="nav-item">
						<%if(info.getId().equals("admin")) {%> <a class="nav-link" href="select.jsp">회원정보 관리</a> <%}%>
					</li>


					<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService.do">로그아웃</a></li>

					<%} else {%>
					<li class="nav-item"><a class="nav-link" href="join.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
					<%} %>
					<!-- 로그인 후 Logout.jsp로 이동할 수 있는'로그아웃'링크와 '개인정보수정'링크를 출력하시오. -->


				</ul>
			</div>
		</div>
	</nav>


	<!-- 메뉴페이지 -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">


				<h1 class="my-4">기본 필터</h1>
				<div class="list-group">
					<a href="#" class="list-group-item" id="check1">매물</a> <a href="#" class="list-group-item" id="check2">전 월세</a>
				</div>



				<h1 class="my-4">특별 필터</h1>
				<div class="list-group">
					<a href="price.jsp" class="list-group-item">맞춤</a> <a href="price.jsp" class="list-group-item">임대</a>
				</div>

				<h1 class="my-4">가격 예측</h1>
				<div class="list-group">
					<a href="price.jsp" class="list-group-item">가격 예측</a> <a href="price.jsp" class="list-group-item">임대</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
					<ol class="carousel-indicators">

					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">



							<div id="basic">
								<div id="filter">
									<h1>필터이름</h1>
								</div>

								<form action="SearchService.do" method="post">

									<!-- radio를 사 -->
									아파트<input type="radio" name="table" value="apt_name"> 동<input type="radio" name="table" value="dong"> 
									검색 : <input type="text" name="search"> <input type="submit" value="검색">
								</form>

								<!--  <img class="d-block img-fluid" src="./img/white-img.jpg" alt="First slide"> 이미지 파일 넣는 곳-->
							</div>

						</div>

					</div>

					<div id="row">
						<%					
					DongSearchList = (ArrayList<Main_filterDTO>)session.getAttribute("DongSearchList");					
					if (DongSearchList != null) {
						System.out.print("동 성공!!");
						System.out.print(DongSearchList.size());
						
						
					%>
						<table>
							<tr>
								<td>즐겨찾기</td>
								<td>번호</td>
								<td>매매 번호</td>
								<td>아파트 이름</td>
								<td>동 이름</td>
								<td>가격</td>
								<td>거래 년도</td>
								<td>월</td>
								<td>일</td>
								<td>평수</td>
								<td>층</td>
							</tr>

							<%for (int i = 0; i < DongSearchList.size(); i++) {%>
							<tr>
								<td><input type="checkbox" value=""></td>
								<td><%=i + 1%></td>
								<td><%=DongSearchList.get(i).getMaemae_num()%></td>
								<td><%=DongSearchList.get(i).getApt_name()%></td>
								<td><%=DongSearchList.get(i).getDong()%></td>
								<td><%=DongSearchList.get(i).getPrice()%></td>
								<td><%=DongSearchList.get(i).getYear()%></td>
								<td><%=DongSearchList.get(i).getMonth()%></td>
								<td><%=DongSearchList.get(i).getDay()%></td>
								<td><%=DongSearchList.get(i).getApt_size()%></td>
								<td><%=DongSearchList.get(i).getFloor()%></td>
							</tr>

							<%}%>
						</table>
						<%}%>

						<%
					AptSearchList = (ArrayList<Main_filterDTO>)session.getAttribute("AptSearchList");
					if (AptSearchList != null) {
					System.out.print("아파트 성공!");
					System.out.print(AptSearchList.size());
					%>
						<table>
							<tr>
								<td>즐겨찾기</td>
								<td>번호</td>
								<td>매매 번호</td>
								<td>아파트 이름</td>
								<td>동 이름</td>
								<td>가격</td>
								<td>거래 년도</td>
								<td>월</td>
								<td>일</td>
								<td>평수</td>
								<td>층</td>
							</tr>

							<%for (int i = 0; i < AptSearchList.size(); i++) {%>
							<tr>
								<td><input type="checkbox" value="1"></td>
								<td><%=i + 1%></td>
								<td><%=AptSearchList.get(i).getMaemae_num()%></td>
								<td><%=AptSearchList.get(i).getApt_name()%></td>
								<td><%=AptSearchList.get(i).getDong()%></td>
								<td><%=AptSearchList.get(i).getPrice()%></td>
								<td><%=AptSearchList.get(i).getYear()%></td>
								<td><%=AptSearchList.get(i).getMonth()%></td>
								<td><%=AptSearchList.get(i).getDay()%></td>
								<td><%=AptSearchList.get(i).getApt_size()%></td>
								<td><%=AptSearchList.get(i).getFloor()%></td>
							</tr>

							<%}%>
						</table>
						<%}%>
					</div>


				</div>

				<div id="mat">확인용</div>


				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<button id="check3">체크확인</button>


	<!-- Footer -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright & copy; YourWebsite 2020</p>
		</div>
		<!-- /.container -->


	</footer>



	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/jquery/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
  
  	
  $('#check3').on('click', function(){
	  
	  console.log("클릭3");
  });
  
  $('#check1').click(function(){
	 $('#basic').hide(); 
  });
  
  
  $('#check1').click(function(){
	  console.log("클릭1");
	 $('#basic').css({
		
		 display : "block";
		 
	 });
	 
	 $('#mat').css({
			
		 display : "none";
		 
	 });
	  
  });
	
  $('#check2').on('click', function(){
	  console.log("클릭2");
	  $('#basic').css({
			
			 display :none;
			 
	 });
	  
	  
	 $('#mat').css({
		
		 display : block;
		 
	 });
	  
  });
  
  
  
  </script>

</body>

</html>
