<%@page import="com.model.FavoriteDAO"%>
<%@page import="com.model.FavoriteDTO"%>
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

<style type="text/css">
table, td {
	border: 1px solid black;
}

table {
	width: 60%;
	height: 100px;
	margin: auto;
	text-align: center;
}

#basic, #junwall, #mat{
	display: none;
	
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>


</head>
<body>
					  <%					
						MemberDTO Mea_info = (MemberDTO) session.getAttribute("info");
					  	FavoriteDAO dao = new FavoriteDAO();
					  	ArrayList<Main_filterDTO> MeaList = dao.Mea_view(Mea_info);					  				  						  	
						%>
					  <%if(MeaList != null) {%>
						<table>
						<tr>
							<td>번호</td>
							<td>매매번호</td>
							<td>아파트이름</td>
							<td>가격</td>
							<td>동</td>
							<td>건축 년도</td>
							<td>거래 년도</td>
							<td>월</td>
							<td>일</td>
							<td>평수</td>
							<td>층</td>
						</tr>

						<%for (int i = 0; i < MeaList.size(); i++) {%>
						<tr>
							<td><%=i + 1%></td>
							<td><%=MeaList.get(i).getMaemae_num()%></td>
							<td><%=MeaList.get(i).getApt_name()%></td>
							<td><%=MeaList.get(i).getPrice()%></td>
							<td><%=MeaList.get(i).getDong()%></td>
							<td><%=MeaList.get(i).getBuild_year()%></td>
							<td><%=MeaList.get(i).getYear()%></td>
							<td><%=MeaList.get(i).getMonth()%></td>
							<td><%=MeaList.get(i).getDay()%></td>
							<td><%=MeaList.get(i).getApt_size()%></td>
							<td><%=MeaList.get(i).getFloor()%></td>
						</tr>
						<%}%>
					</table>
					<%}%>


				 <%MemberDTO Rent_info = (MemberDTO) session.getAttribute("info");
				 ArrayList<Rent_searchDTO> RentList = dao.Rent_view(Rent_info);
					if (RentList != null) {%>
					<table>
						<tr>
							<td>번호</td>
							<td>임대번호</td>
							<td>아파트이름</td>
							<td>동</td>
							<td>보증금액</td>
							<td>월세금액</td>
							<td>건축년도</td>
							<td>거래 년도</td>
							<td>월</td>
							<td>일</td>
							<td>평수</td>
							<td>층</td>
						</tr>

						<%for (int i = 0; i < RentList.size(); i++) {%>
						<tr>
							<td><%=i + 1%></td>
							<td><%=RentList.get(i).getRent_num()%></td>
							<td><%=RentList.get(i).getApt_name()%></td>
							<td><%=RentList.get(i).getDong()%></td>
							<td><%=RentList.get(i).getDeposit()%></td>
							<td><%=RentList.get(i).getLoyer()%></td>
							<td><%=RentList.get(i).getBuild_year()%></td>
							<td><%=RentList.get(i).getYear()%></td>
							<td><%=RentList.get(i).getMonth()%></td>
							<td><%=RentList.get(i).getDate()%></td>
							<td><%=RentList.get(i).getApt_size()%></td>
							<td><%=RentList.get(i).getFloor()%></td>
						</tr>
						<%}%>
					</table>
					<%}%>

</body>
</html>