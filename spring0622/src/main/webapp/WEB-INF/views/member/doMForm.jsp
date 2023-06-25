<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doMForm</title>
	</head>
	<body>
		<h2>회원가입 정보</h2>
		<h3>아이디: ${mdto.id}</h3>
		<h3>비밀번호: ${mdto.pw}</h3>
		<h3>이 름: ${mdto.name}</h3>
		<h3>성 별: ${mdto.gender}</h3>
		<h3>직 업: ${mdto.job}</h3>
		<h3>취 미: ${mdto.hobby}</h3>
		
		
		<!-- 수정하기 -->
		<form action="updateMForm" method="post" name="frm">
		
			<input type="hidden" name="id" value="${mdto.id}"><!-- 숨겨서 보내기..! -->
			<input type="hidden" name="pw" value="${mdto.pw}">
			<input type="hidden" name="name" value="${mdto.name}">
			<input type="hidden" name="gender" value="${mdto.gender}">
			<input type="hidden" name="job" value="${mdto.job}">
			<input type="hidden" name="hobby" value="${mdto.hobby}">
			
			<input type="submit" value="수정하기">
		</form>
		
	</body>
</html>