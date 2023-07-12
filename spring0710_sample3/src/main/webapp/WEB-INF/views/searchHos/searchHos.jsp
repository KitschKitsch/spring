<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="../img/favicon.png" type="image/png">
    <title>Hospice Medical</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../vendors/linericon/style.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="../vendors/animate-css/animate.css">
    <link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <style>
    	/* #map{width: 79%; height:800px; position: fixed; top: 100px; left: 20%; border: 1px solid black; float: right;} */
    	/* #searchList{width: 19%; position: fixed; top: 100px; border: 1px solid black; float: right;} */
    </style>
</head>

<body>

    <!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container">
				<div class="float-left">
					<ul class="left_side">
						<li>
							<a href="login.html">
								<i class="fa fa-facebook-f"></i>
							</a>
						</li>
						<li>
							<a href="login.html">
								<i class="fa fa-twitter"></i>
							</a>
						</li>
						<li>
							<a href="login.html">
								<i class="fa fa-dribbble"></i>
							</a>
						</li>
						<li>
							<a href="login.html">
								<i class="fa fa-behance"></i>
							</a>
						</li>
					</ul>
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<a href="login.html">
								<i class="lnr lnr-phone-handset"></i>
								012-6532-568-9746
							</a>
						</li>
						<li>
							<a href="#">
								<i class="lnr lnr-envelope"></i>
								emergency@colorlib.com
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html">
						<img src="img/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					 aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<div class="row ml-0 w-100">
							<div class="col-lg-12 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item">
										<a class="nav-link" href="index.html">Home</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="departments.html">Departments</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="doctors.html">Doctors</a>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="about.html">About</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="services.html">Services</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="elements.html">Elements</a>
											</li>
										</ul>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="blog.html">Blog</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="single-blog.html">Blog Details</a>
											</li>
										</ul>
									</li>
									<li class="nav-item active">
										<a class="nav-link" href="contact.html">Contact</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->

    <!--================ Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-left">
                    <h2>Contact Us</h2>
                    <div class="page_link">
                        <a href="index.html">Home</a>
                        <a href="contact.html">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Banner Area =================-->

    <!--================Contact Area =================-->
    <section class="contact_area p_120">
        <div class="container">
			<div id="searchList" style="width:27%; float:left; position: relative; top: 0px">
	        	<button type="button" onclick="hosBtn()">병원</button>
				<button type="button" onclick="pharmBtn()">약국</button>
				<button type="button" onclick="nursBtn()">요양병원</button>
				<table>
					<tr>
						<th>내 주변 의료기관 찾기</th>
					</tr>
					<tbody id="hosList">
					</tbody>
				</table>
			</div>
			
            <div id="mapBox" class="mapBox" style="width:70%">
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="contact_info">
                        <div class="info_item">
                            <i class="lnr lnr-home"></i>
                            <h6>California, United States</h6>
                            <p>Santa monica bullevard</p>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-phone-handset"></i>
                            <h6>
                                <a href="#">00 (440) 9865 562</a>
                            </h6>
                            <p>Mon to Fri 9am to 6 pm</p>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-envelope"></i>
                            <h6>
                                <a href="#">support@colorlib.com</a>
                            </h6>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter Subject">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Enter Message"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12 text-right">
                            <button type="submit" value="submit" class="btn submit_btn">Send Message</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--================Contact Area =================-->

    <!-- start footer Area -->
    <footer class="footer-area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-6">
                    <div class="single-footer-widget">
                        <h6>Top Products</h6>
                        <ul class="footer-nav">
                            <li>
                                <a href="#">Managed Website</a>
                            </li>
                            <li>
                                <a href="#">Manage Reputation</a>
                            </li>
                            <li>
                                <a href="#">Power Tools</a>
                            </li>
                            <li>
                                <a href="#">Marketing Service</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4  col-md-6">
                    <div class="single-footer-widget mail-chimp">
                        <h6 class="mb-20">Contact Us</h6>
                        <p>
                            56/8, Santa bullevard, Rocky beach, San fransisco, Los angeles, USA
                        </p>
                        <h3>012-6532-568-9746</h3>
                        <h3>012-6532-568-97468</h3>
                    </div>
                </div>
                <div class="col-lg-6  col-md-12">
                    <div class="single-footer-widget newsletter">
                        <h6>Newsletter</h6>
                        <p>You can trust us. we only send promo offers, not a single spam.</p>
                        <div id="mc_embed_signup">
                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">

                                <div class="form-group row">
                                    <div class="col-lg-7 col-md-6 col-sm-12">
                                        <input name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                            required="" type="email">
                                    </div>

                                    <div class="col-lg-5 col-md-12">
                                        <button class="nw-btn main_btn circle">get started
                                            <span class="lnr lnr-arrow-right"></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="info"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row footer-bottom d-flex justify-content-between">
                <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
                <div class="col-lg-4 col-sm-12 footer-social">
                    <a href="#">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="#">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#">
                        <i class="fa fa-dribbble"></i>
                    </a>
                    <a href="#">
                        <i class="fa fa-behance"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>
    <!-- End footer Area -->

    <!--================Contact Success and Error message Area =================-->
    <div id="success" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                    <h2>Thank you</h2>
                    <p>Your message is successfully sent...</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Modals error -->

    <div id="error" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                    <h2>Sorry !</h2>
                    <p> Something went wrong </p>
                </div>
            </div>
        </div>
    </div>
    <div id="map"></div>
    <!--================End Contact Success and Error message Area =================-->




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- <script src="vendors/lightbox/simpleLightbox.min.js"></script> -->
    <script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <!-- <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script> -->
    <script src="../js/jquery.ajaxchimp.min.js"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nx22ZmINYk9TGiXDEXGVxghC43Ox6qA"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <script src="../js/mail-script.js"></script>
    <script src="../js/custom.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8704aeb10138e02bdeb9cb9fef81ab9"></script>
    <script>
     
	 function clickHere(hno){
		 $.ajax({
			 url: "/oneData",
			 type: "get",
			 data: {"hno":hno},
			 success: function(data) {
				 alert("성공");
				 console.log(data);
				 
	        var lat = data[0].xpos, // 위도
	            lon = data[0].ypos; // 경도
				
				return function panTo() {
				    // 이동할 위도 경도 위치를 생성합니다 
				    var moveLatLon = new kakao.maps.LatLng(lat, lon);
				    // 지도 중심을 부드럽게 이동시킵니다
				    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				    map.panTo(moveLatLon);            
				}
			 },
			 error: function() {
				 alert("실패");
			 }
		 });// ajax
 	 }// clickHere
 	 
 	 
 	window.onload = function () {
 	    var el = document.getElementById("test");
 	    el.onclick = hello;
 	}
 	function hello()  {
 	  alert('안녕하세요');
 	}
 	 
    </script>
    
    
<script>
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
					htmlData += "<tr><td>--------------------</td></tr>";
					htmlData += "<tr><th><a onclick='clickHere("+data[i].hno+")' style='color:orange; cursor:pointer'>"+data[i].hosnm+"</a></th></tr>";
					htmlData += "<tr><td>진료과목: "+data[i].sbjnm+"</td></tr>";
					htmlData += "<tr><td>주소: "+data[i].addr+"</td></tr>";
					htmlData += "<tr><td id='test'>전화번호: "+data[i].tel+"</td></tr>";
					$("#hosList").append(htmlData);
				}
				
				// 전체 출력하는 함수호출 -> HTML 클릭하면 1개만 출력하는 함수호출 or 1개 데이터 값만 전체호출함수에서 변경 
				
				allBtn(data);
				
				
				
				
			},
			error: function(data) {
				alert("실패");
			}
		});// ajax
	}// allData
 

function allBtn(data){
	 
	 
	//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	        var lat = position.coords.latitude, // 위도
	            lon = position.coords.longitude; // 경도
	            
 	var mapContainer = document.getElementById('mapBox'), // 지도를 표시할 div  
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
				    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
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
				}
				
				
				
	    });// 위치정보
	}// 위치정보 if문
	
}


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
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('mapBox'), // 지도를 표시할 div  
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
			    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
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
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('mapBox'), // 지도를 표시할 div  
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
			    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
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
				htmlData += "<td>"+data[i].sbjnm+"</td>";
				htmlData += "<td>"+data[i].addr+"</td>";
				htmlData += "<td>"+data[i].tel+"</td>";
				htmlData += "</tr>";
				$("#hosList").append(htmlData);
			}
			var mapContainer = document.getElementById('mapBox'), // 지도를 표시할 div  
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
			    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
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


	




</body>

</html>