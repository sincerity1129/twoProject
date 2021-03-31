<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>

</style>

<body>
	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list  = dao.select();
	%>
	<div class="cotainer">
	<table>
		
	
	</table>
	


</body>
</html>