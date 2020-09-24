<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><th>사번</th><th>이름</th><th>부서명</th><th>직급</th><th>입사시기</th></tr>
	<c:forEach var = "j" items="${datas}">
		<tr>
			<td>${j.jikwon_no }</td>
			<td>${j.jikwon_name }</td>
			<td><a href="search?buser_name=${j.buser_name }">${j.buser_name }</a></td>
			<td>${j.jikwon_jik }</td>
			<td>${j.jikwon_ibsa }</td>
		</tr>
	</c:forEach>
</table>
인원수 : ${data.count } 명
<br>
<br>
<form action="jikwon" method="post">
부서별 자료보기 : 
<select name = "buser_name">
	<option value="" selected>전체
	<option value="총무부">총무부
	<option value="영업부">영업부
	<option value="전산부">전산부
	<option value="관리부">관리부
	<option value="기타">기타
</select>
<input type = "submit" style = "background-color: orange;" value="검색">
</form>
<br>
<br>
부서정보 : <br>
부서번호 : ${info.buser_no } &nbsp; 부서명 : ${info.buser_name } &nbsp; 부서전화 : ${info.buser_tel } &nbsp; 부서위치 : ${info.buser_loc } <br> 


</body>
</html>