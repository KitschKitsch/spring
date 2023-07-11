<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>hos_search</title>
    <style>
    	#map{width: 79%; height:800px; position: fixed; top: 100px; left: 20%; border: 1px solid black; float: right;}
    	#searchList{width: 19%; position: fixed; top: 100px; border: 1px solid black; float: right;}
    </style>
</head>
<body>
<div id="map"></div>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8704aeb10138e02bdeb9cb9fef81ab9"></script>
<script>
//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
    
	allData(); 
	function allData() {
		alert("전체 데이터 받아오기");
		$.ajax({
			url: "/allData",
			type: "get",
			success: function(data) {
				console.log(data);
				for (var i=0; i<data.length; i++) {
					let htmlData = "";
					htmlData += "<tr>";
					htmlData += "<td>"+data[i].hosnm+"</td>";
					htmlData += "<td>"+data[i].clnm+"</td>";
					htmlData += "<td>"+data[i].sbjnm+"</td>";
					htmlData += "<td>"+data[i].addr+"</td>";
					htmlData += "<td>"+data[i].tel+"</td>";
					htmlData += "<td>"+data[i].drcnt+"</td>";
					htmlData += "<td>"+data[i].estdate+"</td>";
					htmlData += "</tr>";
					$("#hosList").append(htmlData);
				}
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
			        level: 5 // 지도의 확대 레벨
			    };
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
				var mapTypeControl = new kakao.maps.MapTypeControl();
				// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
				// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
				map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
				// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
				var zoomControl = new kakao.maps.ZoomControl();
				map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
				// 마커를 표시할 위치와 title 객체 배열입니다 
				var positions = [];
				for (var i=0; i<data.length; i++) {
				   	  positions.push(
				   			  { title: '<div style="padding:5px;">'+data[i].hosnm+'<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
					      latlng: new kakao.maps.LatLng(data[i].xpos, data[i].ypos) }
				   			  )
				}
				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
				for (var i=0; i<positions.length; i++) {
				    // 마커 이미지의 이미지 크기 입니다
				    var imageSize = new kakao.maps.Size(24, 35); 
				    // 마커 이미지를 생성합니다    
				    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
					// 마커를 생성합니다
				    var marker = new kakao.maps.Marker({
				      map: map, // 마커를 표시할 지도
				      position: positions[i].latlng,
				      image : markerImage,
				    });
					var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
				    // 마커에 표시할 인포윈도우를 생성합니다 
				    var infowindow = new kakao.maps.InfoWindow({
				    	content: positions[i].title, // 인포윈도우에 표시할 내용
				    	removable : iwRemoveable
				    });
				    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
				    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
				    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
				    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
				   	kakao.maps.event.addListener(marker, 'click', makeOutListener(infowindow));
				}
				// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
				function makeOverListener(map, marker, infowindow) {
				    return function() {
				        infowindow.open(map, marker);
				    };
				}
				// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
				function makeOutListener(infowindow) {
				    return function() {
				        infowindow.close();
				    };
				}// for문
			},
			error: function(data) {
				alert("실패");
			}
		});// ajax
	}// allData
    });// 위치정보
}// 위치정보 if문



/* -------------------- 병원버튼 --------------------  */
function hosBtn() {
   // 이전에 표시된 데이터 초기화
   $("#hosList").empty();
   $("#map").empty();

   // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
    var lat = position.coords.latitude, // 위도
        lon = position.coords.longitude; // 경도

    alert("병원 데이터 받아오기");
	$.ajax({
		url: "/hosBtn",
		type: "get",
		success: function(data) {
			console.log(data);
			for (var i=0; i<data.length; i++) {
				let htmlData = "";
				htmlData += "<tr>";
				htmlData += "<td>"+data[i].hosnm+"</td>";
				htmlData += "<td>"+data[i].clnm+"</td>";
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "<td>"+data[i].drcnt+"</td>";
				htmlData += "<td>"+data[i].estdate+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			// 마커를 표시할 위치와 title 객체 배열입니다 
			var positions = [];
			for (var i=0; i<data.length; i++) {
			   	  positions.push(
			   			  { title: '<div style="padding:5px;">'+data[i].hosnm+'<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
				      latlng: new kakao.maps.LatLng(data[i].xpos, data[i].ypos) }
			   			  )
			}
			// 마커 이미지의 이미지 주소입니다
			var imageSrc = "https://icons.veryicon.com/png/o/business/wb-legend-of-shanghai-ocean-bearing-body/wb_-hospital.png"; 
			for (var i=0; i<positions.length; i++) {
			    // 마커 이미지의 이미지 크기 입니다
			    var imageSize = new kakao.maps.Size(35, 35); 
			    // 마커 이미지를 생성합니다    
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
				// 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			      map: map, // 마커를 표시할 지도
			      position: positions[i].latlng,
			      image : markerImage,
			    });
				var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			    	content: positions[i].title, // 인포윈도우에 표시할 내용
			    	removable : iwRemoveable
			    });
			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			   	kakao.maps.event.addListener(marker, 'click', makeOutListener(infowindow));
			}
			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}
			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}// for문
		},
		error: function(data) {
			alert("실패");
		}
	});// ajax
    });// 위치정보
}// hosBtn



/* -------------------- 약국버튼 --------------------  */
function pharmBtn() {
   // 이전에 표시된 데이터 초기화
   $("#hosList").empty();
   $("#map").empty();

   // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
    var lat = position.coords.latitude, // 위도
        lon = position.coords.longitude; // 경도

    alert("약국 데이터 받아오기");
	$.ajax({
		url: "/pharmBtn",
		type: "get",
		success: function(data) {
			console.log(data);
			for (var i=0; i<data.length; i++) {
				let htmlData = "";
				htmlData += "<tr>";
				htmlData += "<td>"+data[i].hosnm+"</td>";
				htmlData += "<td>"+data[i].clnm+"</td>";
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "<td>"+data[i].drcnt+"</td>";
				htmlData += "<td>"+data[i].estdate+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			// 마커를 표시할 위치와 title 객체 배열입니다 
			var positions = [];
			for (var i=0; i<data.length; i++) {
			   	  positions.push(
			   			  { title: '<div style="padding:5px;">'+data[i].hosnm+'<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
				      latlng: new kakao.maps.LatLng(data[i].xpos, data[i].ypos) }
			   			  )
			}
			// 마커 이미지의 이미지 주소입니다
			var imageSrc = "https://icons.veryicon.com/png/o/healthcate-medical/mental-health-department-icon-library/pharmacy-department.png"; 
			for (var i=0; i<positions.length; i++) {
			    // 마커 이미지의 이미지 크기 입니다
			    var imageSize = new kakao.maps.Size(40, 40); 
			    // 마커 이미지를 생성합니다    
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
				// 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			      map: map, // 마커를 표시할 지도
			      position: positions[i].latlng,
			      image : markerImage,
			    });
				var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			    	content: positions[i].title, // 인포윈도우에 표시할 내용
			    	removable : iwRemoveable
			    });
			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			   	kakao.maps.event.addListener(marker, 'click', makeOutListener(infowindow));
			}
			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}
			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}// for문
		},
		error: function(data) {
			alert("실패");
		}
	});// ajax
    });// 위치정보
}// hosBtn



/* -------------------- 요양병원버튼 --------------------  */
function nursBtn() {
   // 이전에 표시된 데이터 초기화
   $("#hosList").empty();
   $("#map").empty();

   // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
    var lat = position.coords.latitude, // 위도
        lon = position.coords.longitude; // 경도

    alert("요양병원 데이터 받아오기");
	$.ajax({
		url: "/nursBtn",
		type: "get",
		success: function(data) {
			console.log(data);
			for (var i=0; i<data.length; i++) {
				let htmlData = "";
				htmlData += "<tr>";
				htmlData += "<td>"+data[i].hosnm+"</td>";
				htmlData += "<td>"+data[i].clnm+"</td>";
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "<td>"+data[i].drcnt+"</td>";
				htmlData += "<td>"+data[i].estdate+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			// 마커를 표시할 위치와 title 객체 배열입니다 
			var positions = [];
			for (var i=0; i<data.length; i++) {
			   	  positions.push(
			   			  { title: '<div style="padding:5px;">'+data[i].hosnm+'<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
				      latlng: new kakao.maps.LatLng(data[i].xpos, data[i].ypos) }
			   			  )
			}
			// 마커 이미지의 이미지 주소입니다
			var imageSrc = "https://icons.veryicon.com/png/o/business/service-icon-1/s_-provide-for-the-aged.png"; 
			for (var i=0; i<positions.length; i++) {
			    // 마커 이미지의 이미지 크기 입니다
			    var imageSize = new kakao.maps.Size(40, 40); 
			    // 마커 이미지를 생성합니다    
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
				// 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			      map: map, // 마커를 표시할 지도
			      position: positions[i].latlng,
			      image : markerImage,
			    });
				var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			    	content: positions[i].title, // 인포윈도우에 표시할 내용
			    	removable : iwRemoveable
			    });
			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			   	kakao.maps.event.addListener(marker, 'click', makeOutListener(infowindow));
			}
			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}
			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}// for문
		},
		error: function(data) {
			alert("실패");
		}
	});// ajax
    });// 위치정보
}// hosBtn



</script>
	
	<button type="button" onclick="hosBtn()">병원</button>
	<button type="button" onclick="pharmBtn()">약국</button>
	<button type="button" onclick="nursBtn()">요양병원</button>
	<div id="searchList">
		<table>
			<tr>
				<th>병원이름</th>
				<th>종별이름</th>
				<th>과목명</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>의사수</th>
				<th>설립일</th>
			</tr>
			<tbody id="hosList">
			</tbody>
		</table>
	</div>
	
	
</body>
</html>