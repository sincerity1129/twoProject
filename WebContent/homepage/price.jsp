<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

<title>Insert title here</title>
<!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  <link href="./main.css" rel="stylesheet">

</head>
<body>
	<h1>가격 예측 시스템</h1>
	
	<li font = "bold">목록</li>
	<form action="http://localhost:9000/train" method="post">
	<label><input type = "checkbox" name="check" value="price"> 거래금액</label>
	<label><input type = "checkbox" name="check" value="arch"> 건축년도</label>
	<label><input type = "checkbox" name="check" value="apt_size"> 평수</label>
	<label><input type = "checkbox" name="check" value="floor"> 층</label><br>
	<label><input type = "checkbox" name="check" value="crime"> 범죄자수</label>
	<label><input type = "checkbox" name="check" value="star"> 스타벅스</label>
	<label><input type = "checkbox" name="check" value="subway"> 지하철</label>
	<label><input type = "checkbox" name="check" value="movie"> 영화관</label>
	<label><input type = "checkbox" name="check" value="charge"> 전기차 충전소</label>
	<p><input type="submit"> <input type="reset"></p>
	</form>
		<!-- footer 자리 맞추기 용도 -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>
	

</body>
</html>