<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="..//dapi.kakao.com/v2/maps/sdk.js?appkey=d99aad64257f4c7b6af58515d60b1a79"></script>
<script>
	
	</script>
</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<p id="result"></p>
	
	<script type="text/javascript">

		// 전체좌표
		var m = [ [ 37.492052, 126.8848701 ],[ 37.4996715, 126.8664159 ], [ 37.4912147, 126.8404114 ] ];
		
		drawMap(m, m[0][0],m[0][1]);
		function drawMap(m,x,y){
			
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		    mapOption = {
				center : new kakao.maps.LatLng(x, y), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다
		
			var points = [
			    new kakao.maps.LatLng(m[0][0], m[0][1]),
			    new kakao.maps.LatLng(m[1][0], m[1][1]),
			    new kakao.maps.LatLng(m[2][0], m[2][1])
			];
			
			// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
			var bounds = new kakao.maps.LatLngBounds();
			
			var i, marker;
			for (i = 0; i < points.length; i++) {
			    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
			    marker =     new kakao.maps.Marker({ position : points[i] });
			    marker.setMap(map);
			   
			    // LatLngBounds 객체에 좌표를 추가합니다
			    bounds.extend(points[i]);
			}
			map.setBounds(bounds);
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			    // 클릭한 위도, 경도 정보를 가져옵니다
			    var latlng = mouseEvent.latLng;
			    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			    message += '경도는 ' + latlng.getLng() + ' 입니다';
			    console.log(message)
			    redrawMap(m,latlng.getLat(),latlng.getLng())
			   
			});
		}// drawMap()
		
		function redrawMap(m,x,y){
			
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		    mapOption = {
				center : new kakao.maps.LatLng(x, y), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			var points = [
			    new kakao.maps.LatLng(m[0][0], m[0][1]),
			    new kakao.maps.LatLng(m[1][0], m[1][1]),
			    new kakao.maps.LatLng(m[2][0], m[2][1])
			];
			
			// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
			var bounds = new kakao.maps.LatLngBounds();
			
			var i, marker;
			for (i = 0; i < points.length; i++) {
			    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
			    marker =     new kakao.maps.Marker({ position : points[i] });
			    marker.setMap(map);
			   
			    // LatLngBounds 객체에 좌표를 추가합니다
			    bounds.extend(points[i]);
			}
			
		}	
		
		
	
		
		
		
	</script>
	
</body>
</html>
