<%@page import="java.text.DecimalFormat"%>
<%@include file="db.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h2 style="text-align: center;"> 강사매출현황</h2>
<form action="" style="justify-content: center; align-items: center; display: flex;">
<table border="1" style="text-align: center;">
	<tr>
		<td style="width: 150px;">강사코드</td>
		<td style="width: 150px;">강의명</td>
		<td style="width: 150px;">강사명</td>
		<td style="width: 150px;">총매출</td>
	</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "select cl.teacher_code, class_name, teacher_name, sum(tuition) salary from tbl_teacher te, tbl_class cl where te.teacher_code=cl.teacher_code group by cl.teacher_code, class_name, teacher_name";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
	int salary = rs.getInt(4);
	DecimalFormat transFormat = new DecimalFormat("₩ ###,###,###");
	String salary2 = transFormat.format(salary);
		
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td style="text-align: right;"><%=rs.getString(3) %></td>
		<td style="text-align: right;"><%=salary2 %></td>
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