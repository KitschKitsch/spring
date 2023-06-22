<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doMemberForm</title>
	</head>
	<body>
		<h2>회원가입 정보</h2>
		<h3>아이디: ${mdto.id}</h3>
		<h3>비밀번호: ${mdto.pw}</h3>
		<h3>이 름: ${mdto.name}</h3>
		<h3>성 별: ${mdto.gender}</h3>
		
<%-- 	<h2>회원가입 정보</h2>
		<h3>아이디: ${id}</h3>
		<h3>비밀번호: ${pw}</h3>
		<h3>이 름: ${name}</h3>
		<h3>성 별: ${gender}</h3> --%>
		
	</body>
</html>