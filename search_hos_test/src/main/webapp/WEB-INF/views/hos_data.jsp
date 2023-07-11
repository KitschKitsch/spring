<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>의료기관찾기</title>
	</head>
	<body>
		<table>
			<tr>
				<th>순번</th>
				<th>병원이름</th>
				<th>종별이름</th>
				<th>과목코드</th>
				<th>과목명</th>
				<th>시도</th>
				<th>시군구</th>
				<th>읍면동</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>의사수</th>
				<th>설립일</th>
				<th>x좌표</th>
				<th>y좌표</th>
			</tr>
			<c:forEach var="hosDto" items="${list}">
				<tr>
					<td>${hosDto.hno}</td>
					<td>${hosDto.hosnm}</td>
					<td>${hosDto.clnm}</td>
					<td>${hosDto.sbjcd}</td>
					<td>${hosDto.sbjnm}</td>
					<td>${hosDto.sdnm}</td>
					<td>${hosDto.sggnm}</td>
					<td>${hosDto.emdnm}</td>
					<td>${hosDto.addr}</td>
					<td>${hosDto.tel}</td>
					<td>${hosDto.drcnt}</td>
					<td>${hosDto.estdate}</td>
					<td>${hosDto.xpos}</td>
					<td>${hosDto.ypos}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>