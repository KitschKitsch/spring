<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberForm</title>
	</head>
	<body>
		<form action="doMemberForm" method="get" name="mfrm">
			<label>아이디</label>
			<input type="text" name="id"><br>
			
			<label>비밀번호</label>
			<input type="password" name="pw"><br>
			
			<label>이름</label>
			<input type="text" name="name"><br>
			
			<label>성별</label><br>
			<input type="radio" name="gender" id="male" value="male">
			<label for="male">남자</label>
			<input type="radio" name="gender" id="female" value="female">
			<label for="female">여자</label><br>
			
			<input type="submit" value="전송">
		</form>
	</body>
</html>