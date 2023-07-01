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
			<input type="file" name="files"> <!-- 이름이 같으면 배열로 들어감! -->
			<br>
			<label>파일2</label>
			<input type="file" name="files">
			<br>
			<label>파일3</label>
			<input type="file" name="files">
			<br>
			<input type="submit" value="저장">
		</form>
	</body>
</html>