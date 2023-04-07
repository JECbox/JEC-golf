<%@page import="java.text.DecimalFormat"%>
<%@include file="db.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.security.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<section style="top: 70px; left: 0px; height:100%; width: 100%; background-color: white; position: fixed;">
<h2 style="text-align: center;"> 회원정보조회 </h2>
<form action="" style="display: flex; align-items: center; justify-content: center; text-align: center;">
	<table border="1">
		<tr>
			<td style="width: 150px;">수강월</td>
			<td style="width: 150px;">회원번호</td>
			<td style="width: 150px;">회원명</td>
			<td style="width: 150px;">강의명</td>
			<td style="width: 150px;">강의장소</td>
			<td style="width: 150px;">수강료</td>
			<td style="width: 150px;">등급</td>
		</tr>
	<%
	request.setCharacterEncoding("UTF-8");
	try{
		String sql = "select resist_month, cl.c_no, c_name, class_name, class_area, tuition, grade " +
					"from tbl_teacher te, tbl_member me, tbl_class cl " +
					"where te.teacher_code=cl.teacher_code and me.c_no=cl.c_no";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery(); 
		while(rs.next()){
			String resist_month = rs.getString(1);
			String month =resist_month.substring(0,4) + "년" + resist_month.substring(4,6)+ "월";
			int tuition = rs.getInt(6);
			DecimalFormat tranDecimalFormat = new DecimalFormat("₩ ###,###,###"+"원");
			String price = tranDecimalFormat.format(tuition);
	%>
		<tr>
			<td><%=month %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=price%></td>
			<td><%=rs.getString(7) %></td>
			
		</tr>
	<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	</table>
</form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>