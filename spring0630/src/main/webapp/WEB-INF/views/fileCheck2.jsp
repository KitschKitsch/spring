<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fileCheck2</title>
	</head>
	<body>
		<h2>게시글등록</h2>
		<h3>제목: ${bdto.btitle}</h3>
		<h3>파일명: ${bdto.bfile}</h3> <!-- 1.jpg, 2.jpg, 3.jpg (한줄로) -->
		<h3>이미지</h3>
		<c:forEach var="i" items="${bdto.bfiles }">
			<h3>${i}</h3>
		</c:forEach>
		<h3><img src="/upload/${bdto.bfiles[0]}"></h3>
		<h3><img src="/upload/${bdto.bfiles[1]}"></h3>
		<h3><img src="/upload/${bdto.bfiles[2]}"></h3>
	</body>
</html>