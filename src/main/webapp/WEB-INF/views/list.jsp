<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	상품보기(@mvc-myBatis)
	<br>
	<table border="1">
		<tr>
			<th>code</th><th>sang</th><th>su</th><th>dan</th>
		</tr>
		<c:forEach var="s" items="${datas}">
			<tr>
				<td>${s.code}</td>
				<td>${s.sang}</td>
				<td>${s.su}</td>
				<td>${s.dan}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
				<form action="search" method="post">
					상품명 별 검색: <input type="text" name="searchValue"> <input
						type="submit" value="검색" />
				</form>
			</td>
		</tr>
	</table>
</body>
</html>