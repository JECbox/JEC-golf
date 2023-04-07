<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"/>

<section style="top: 70px; left: 0px; height:100%; width: 100%; background-color: white; position: fixed;">
<h2 style="text-align: center;"> 골프수강신청 </h2>
<form method="post" action="i_action.jsp" name="frm" style="display: flex; align-items: center; justify-content: center;">
 <table border="1" style="">
 <tr>
  <td style="text-align: center;">수강월</td>
  <td><input type ="text" name="resist_month" style="width: 150px;">예) 202203</td>
</tr>
<tr>
	<td style="text-align: center;">회원명</td>
	<td>
		<select name="c_name"style="width: 150px" onchange="getvalue(this.value)">
			<option value="">회원명</option>
			<option value="10001">홍길동</option>
			<option value="10002">장발장</option>
			<option value="10003">임꺽정</option>
			<option value="20001">성춘향</option>
			<option value="20002">이몽룡</option>
		</select>
	</td>
</tr>
<tr>
	<td style="text-align: center;">회원번호</td>
	<td><input id="c_no" name="c_no" readonly style="width: 150px;"></td>
</tr>
<tr>
	<td style="text-align: center;">강의장소</td>
	<td>
	<input type="radio" name="class_area" value="서울본원">서울본원
	<input type="radio" name="class_area" value="성남본원">성남본원
	<input type="radio" name="class_area" value="부산본원">부산본원
	<input type="radio" name="class_area" value="대구본원">대구본원
	</td>
</tr>
<tr>
	<td style="text-align: center;">강의명</td>
	<td>
		<select name="class_name" style="width: 150px;" onchange="getvalue2(this.value)">
			<option value="">강의신청</option>
			<option value="100000">초급반</option>
			<option value="200000">중급반</option>
			<option value="300000">고급반</option>
			<option value="400000">심화반</option>
		</select>
	</td>
</tr>
<tr>
	<td style="text-align: center;">수강료</td>
	<td><input id="tuition" name="tuition" readonly="readonly" style="width: 150px;"></td>
</tr>
<tr style="text-align: center;">
	<td colspan="2"> 
		<input type="button" value="수강신청" onclick="add()">
		<input type="button" value="다시쓰기" onclick="res()">
	</td>
</tr>
 </table>
</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>