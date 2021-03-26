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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>APT Homepage</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  <link href="./main.css" rel="stylesheet"> 

</head>

<body>

	<%
	MemberDTO info = (MemberDTO)session.getAttribute("info");
	Main_filterDTO apt = (Main_filterDTO)session.getAttribute("info");
				if(apt != null){
				}
				Main_filterDAO dao = new Main_filterDAO();
				ArrayList<Main_filterDTO> searchlist = null;
				if(apt != null){
				searchlist = dao.search(apt.getApt_name());
			
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
          <li class="nav-item active">
            <a class="nav-link" href="#">메인
              <span class="sr-only">(current)</span>
            </a>
          </li>
          
          
          				<li class = "nav-item">
						<%if (info != null) {%>
						
							<%if(info.getId().equals("admin")) {%>
							<a class="nav-link" href = "select.jsp">회원정보 관리</a>
							<%}%>
							</li>
							
							<li class="nav-item"><a class="nav-link" href = "mypage.jsp">마이페이지</a></li>
							<li class="nav-item"><a class="nav-link" href = "LogoutService.do">로그아웃</a></li>
							
						<%} else {%>
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
      	

        <h1 class="my-4">필터</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">맞춤 필터</a>
          <a href="#" class="list-group-item">임대 아파트</a>
        </div>
        
        <h1 class="my-4">가격 예측</h1>
        <div class="list-group">
          <a href="price.jsp" class="list-group-item">가격 예측</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
           
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
            	<h1>기본 필터</h1>
            	
            	<form action="SearchService.do" method = "post">
            		아파트<input type = "radio" name = "type" value = "apt">
	            	동<input type = "radio" name = "type" value = "dong">
	            	검색 : <input type = "text" name = "search">
	            	<input type = "submit" value = "검색">
				</form>
				
              <!--  <img class="d-block img-fluid" src="./img/white-img.jpg" alt="First slide"> 이미지 파일 넣는 곳-->
            </div>
            
          </div>
          
        </div>

        <div class="row">
					<%
					if (searchlist != null) {
					%>
					<%
					for (int i = 0; i < searchlist.size(); i++) {
					
					%>				
					<table>
						<tr>
							<td><%=i + 1%></td>
							<td><%=searchlist.get(i).getApt_name()%></td>
							<td><%=searchlist.get(i).getApt_size()%></td>
							<td><%=searchlist.get(i).getBuild_year()%></td>
							
						</tr>
						
					</table>
					<%
					}
					}
					%>

				</div>

       
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
    
    
  </footer>
  
  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
