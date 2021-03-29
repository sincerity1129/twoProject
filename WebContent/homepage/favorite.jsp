<%@page import="com.model.ImdaeSearchDTO"%>
<%@page import="com.model.Rent_searchDTO"%>
<%@page import="com.model.Main_filterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Main_filterDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


</head>
<body>

<form action="FavoriteService2.do">
	<select name = "select">
		<option value = "maemae" selected = "selected">매매번호</option>
		<option value = "rent">임대번호</option>
	</select>
		<input type ="submit" value = "조회">
</form>

<%
						//전역 변수 만들어주기.
						MemberDTO info = (MemberDTO) session.getAttribute("info");
						Main_filterDAO dao = new Main_filterDAO();
						ArrayList<Main_filterDTO> AptSearchList = null;
						ArrayList<Main_filterDTO> DongSearchList = null;
						ArrayList<Rent_searchDTO> RentSearchList = null;
						ArrayList<Main_filterDTO> MatSearchList = null;
						ArrayList<ImdaeSearchDTO> ImdaeSearchList = null;
						String mat_select = null;

						if (info != null) {
							/*여긴 기본필터가 아닌 맞춤필터 시에 필요한 부분 */
						}
						%>


	<%
					DongSearchList = (ArrayList<Main_filterDTO>) session.getAttribute("DongSearchList");
					if (DongSearchList != null) {
					%>
					<table>
						<tr>
							<td>즐겨찾기</td>
							<td>번호</td>
							<td>매매 번호</td>
							<td>아파트 이름</td>
							<td>동 이름</td>
							<td>가격</td>
							<td>건축 년도</td>
							<td>거래 년도</td>
							<td>월</td>
							<td>일</td>
							<td>평수</td>
							<td>층</td>
						</tr>

						<%
						for (int i = 0; i < DongSearchList.size(); i++) {
						%>
						<tr>
							<td><input type="checkbox" value=""></td>
							<td><%=i + 1%></td>
							<td><%=DongSearchList.get(i).getMaemae_num()%></td>
							<td><%=DongSearchList.get(i).getApt_name()%></td>
							<td><%=DongSearchList.get(i).getDong()%></td>
							<td><%=DongSearchList.get(i).getPrice()%></td>
							<td><%=DongSearchList.get(i).getBuild_year()%></td>
							<td><%=DongSearchList.get(i).getYear()%></td>
							<td><%=DongSearchList.get(i).getMonth()%></td>
							<td><%=DongSearchList.get(i).getDay()%></td>
							<td><%=DongSearchList.get(i).getApt_size()%></td>
							<td><%=DongSearchList.get(i).getFloor()%></td>
						</tr>

						<%
						}
						%>
					</table>
					<%
					}
					%>

</body>
</html>