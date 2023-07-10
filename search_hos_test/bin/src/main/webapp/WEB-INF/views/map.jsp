<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<title>카카오맵</title>
	</head>
	<body>
		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width: 100%; height: 350px;"></div>
	
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8704aeb10138e02bdeb9cb9fef81ab9"></script>
		<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
	</body>
</html>