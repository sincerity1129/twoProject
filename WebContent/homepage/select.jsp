<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>
</head>
<body>
	
	
	
	<%ArrayList<MemberDTO> memberList = null; %>
	<%MemberDAO dao = new MemberDAO();%>
	<%memberList = dao.select();%>
	<%if(memberList != null){%>
		<table>
			<tr>
				<td>회원 아이디</td>
				<td>회원 이름</td>
				<td>회원 주소</td>
			</tr>
			
			<%for(int i = 0; i < memberList.size(); i++) {%>
				<tr>
					<td><%=memberList.get(i).getId() %></td>
					<td><%=memberList.get(i).getName() %> </td>
					<td><%=memberList.get(i).getAddr() %> </td>
				</tr>
			<%} %>
		</table>
	<%} %>
	
	
</body>
</html>