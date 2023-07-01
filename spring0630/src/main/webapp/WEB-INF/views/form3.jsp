<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form2 : 파일 여러개 업로드</title>
	</head>
	<body>
		<h2>게시글 여러개 등록</h2>
		<form action="/doForm2" name="frm" method="post" enctype="multipart/form-data">
			<label>제목</label>
			<input type="text" name="btitle">
			<br>
			<label>파일1</label>
			<input multiple="multiple" type="file" name="files"> <!-- multiple: Ctrl키 누르면 다중선택 가능 -->
			<br>
			<input type="submit" value="저장">
		</form>
	</body>
</html>