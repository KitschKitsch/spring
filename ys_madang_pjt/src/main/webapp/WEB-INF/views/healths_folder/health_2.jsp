<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="../img/favicon.png" type="image/png">
<title>Hospice Medical</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../vendors/linericon/style.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet"
	href="../vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="../vendors/animate-css/animate.css">
<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
<!-- main css -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/responsive.css">
<link rel="stylesheet" href="../css/style_jiin.css">
<link rel="stylesheet" href="../css/style_ys.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>

	<!--================Header Menu Area =================-->
	<div data-include-path="../senicare_sub_header"></div>
	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>자가진단 검사결과</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a> <a
							href="health_2">클릭하시면 [ 자가진단 검사결과 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<button onclick="testList()">버튼</button>
	<!-- Start team Area -->
	<section class="team-area section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>노인성 5대질환 자가진단 검사결과</h1>
					<p>
						치매, 퇴행성 관절염, 고혈압, 당뇨병, 뇌혈관질환을 간단하게 진단합니다.<br>본 진단은 단순 참고용으로
						의학적인 진단을 대체할 수 없습니다.
					</p>
				</div>
			</div>

			<!-- 스타일 적용! 처음에 디스플레이 안.보.이.게 -->
			<style>
.demenTest {
	display: none;
}

.arthTest {
	display: none;
}

.hyperTest {
	display: none;
}

.diabetTest {
	display: none;
}

.cerebroTest {
	display: none;
}
</style>

			<script>
				// 디스플레이 숨기고 보여주는 함수
				function selectDemen() {
					$(".arthTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".hyperTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".diabetTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".cerebroTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".demenTest").css("display", "block"); /* 디스플레이를 보.이.게! */
					// 그래스 함수 호출
					drawChart("demen");
					// 스크롤 이동
					var offset = $(".demenTest").offset();
					$('html, body').animate({
						scrollTop : offset.top - 300
					}, 400);
				}
				function selectArth() {
					$(".demenTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".hyperTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".diabetTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".cerebroTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".arthTest").css("display", "block"); /* 디스플레이를 보.이.게! */
					// 그래스 함수 호출
					drawChart("arth");
					// 스크롤 이동
					var offset = $(".arthTest").offset();
					$('html, body').animate({
						scrollTop : offset.top - 300
					}, 400);
				}
				function selectHyper() {
					$(".demenTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".arthTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".diabetTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".cerebroTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".hyperTest").css("display", "block"); /* 디스플레이를 보.이.게! */
					// 그래스 함수 호출
					drawChart("hyper");
					// 스크롤 이동
					var offset = $(".hyperTest").offset();
					$('html, body').animate({
						scrollTop : offset.top - 300
					}, 400);
				}
				function selectDiabet() {
					$(".demenTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".arthTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".hyperTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".cerebroTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".diabetTest").css("display", "block"); /* 디스플레이를 보.이.게! */
					// 그래스 함수 호출
					drawChart("diabet");
					// 스크롤 이동
					var offset = $(".diabetTest").offset();
					$('html, body').animate({
						scrollTop : offset.top - 300
					}, 400);
				}
				function selectCerebro() {
					$(".demenTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".arthTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".hyperTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".diabetTest").css("display", "none"); /* 디스플레이를 안.보.이.게! */
					$(".cerebroTest").css("display", "block"); /* 디스플레이를 보.이.게! */
					// 그래스 함수 호출
					drawChart("cerebro");
					// 스크롤 이동
					var offset = $(".cerebroTest").offset();
					$('html, body').animate({
						scrollTop : offset.top - 300
					}, 400);

					// 결과창 숨겨놓기
					$(document).ready(function() {
						$(".demenResult").hide();
					})
					$(document).ready(function() {
						$(".arthResult").hide();
					})
					$(document).ready(function() {
						$(".hyperResult").hide();
					})
					$(document).ready(function() {
						$(".diabetResult").hide();
					})
					$(document).ready(function() {
						$(".cerebroResult").hide();
					})
				}
			</script>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/demen.png" alt="">
						<div class="align-items-end justify-content-center d-flex"
							onclick="selectDemen()">
							<p>검사결과 보기 >></p>
							<h4>치매</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/arth.png" alt="">
						<div class="align-items-end justify-content-center d-flex"
							onclick="selectArth()">
							<p>검사결과 보기 >></p>
							<h4>퇴행성 관절염</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/hyper.png" alt="">
						<div class="align-items-end justify-content-center d-flex"
							onclick="selectHyper()">
							<p>검사결과 보기 >></p>
							<h4>고혈압</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/diabet.png" alt="">
						<div class="align-items-end justify-content-center d-flex"
							onclick="selectDiabet()">
							<p>검사결과 보기 >></p>
							<h4>당뇨병</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/cerebro.png" alt="">
						<div class="align-items-end justify-content-center d-flex"
							onclick="selectCerebro()">
							<p>검사결과 보기 >></p>
							<h4>뇌혈관질환</h4>
						</div>
					</div>
				</div>
			</div>

			<!--========== 치매 자가진단 ==========-->
			<div class="demenTest">
				<h3 class="c-tit01">내 기억력 점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">치매 자가진단 검사결과</h4>
				<h5>(※ 최대 10개까지만 조회가 가능합니다.)</h5>
				<div>
					<canvas id="demenChart"></canvas>
				</div>
			</div>
			<!--========== 퇴행성 관절염 자가진단 ==========-->
			<div class="arthTest">
				<h3 class="c-tit01">내 관절점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">퇴행성 관절염 자가진단</h4>
				<h5>(※ 최대 10개까지만 조회가 가능합니다.)</h5>
				<div>
					<canvas id="arthChart"></canvas>
				</div>
			</div>
			<!--========== 고혈압 자가진단 ==========-->
			<div class="hyperTest">
				<h3 class="c-tit01">내 혈압점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">고혈압 자가진단</h4>
				<h5>(※ 최대 10개까지만 조회가 가능합니다.)</h5>
				<div>
					<canvas id="hyperChart"></canvas>
				</div>
			</div>
			<!--========== 당뇨병 자가진단 ==========-->
			<div class="diabetTest">
				<h3 class="c-tit01">내 혈당점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">당뇨병 자가진단</h4>
				<h5>(※ 최대 10개까지만 조회가 가능합니다.)</h5>
				<div>
					<canvas id="diabetChart"></canvas>
				</div>
			</div>
			<!--========== 뇌혈관질환 자가진단 ==========-->
			<div class="cerebroTest">
				<h3 class="c-tit01">내 뇌혈관점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">뇌혈관질환 자가진단</h4>
				<h5>(※ 최대 10개까지만 조회가 가능합니다.)</h5>
				<div>
					<canvas id="cerebroChart"></canvas>
				</div>
			</div>



		</div>
	</section>
	<!-- End team Area -->

	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
	<!-- End footer Area -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<!-- 스크립트 : 링크 연결 -->
	<script>
		window.addEventListener('load', function() {
			var allElements = document.getElementsByTagName('*');
			Array.prototype.forEach.call(allElements, function(el) {
				var includePath = el.dataset.includePath;
				if (includePath) {
					var xhttp = new XMLHttpRequest();
					xhttp.onreadystatechange = function() {
						if (this.readyState == 4 && this.status == 200) {
							el.outerHTML = this.responseText;
						}
					};
					xhttp.open('GET', includePath, true);
					xhttp.send();
				}
			});
		});
	</script>



	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
		function generateGradient(ctx, startColor, middleColor, endColor) {
			const gradient = ctx.createLinearGradient(0, 0, 0,
					ctx.canvas.height);
			gradient.addColorStop(0, startColor);
			gradient.addColorStop(0.5, middleColor);
			gradient.addColorStop(1, endColor);
			return gradient;
		}
		
		function drawChart(disNm) {

			let chart_labels = []; // 10개 초과
			let chart_datas = []; // 10개 초과
			let chart_label = []; // 10개 이하
			let chart_data = []; // 10개 이하
			$.ajax({	
				url : "/health/testList",
				type : "post",
				data : {"auth_id" : '${sessionId}'},
				success : function(data) {
					console.log(data);

					if (disNm == "demen") {
						// 일단 데이터 담아서
						chart_labels = data.demenDateList;
						chart_datas = data.demenList;
					}
					if (disNm == "arth") {
						// 일단 데이터 담아서
						chart_labels = data.arthDateList;
						chart_datas = data.arthList;
					}
					if (disNm == "hyper") {
						// 일단 데이터 담아서
						chart_labels = data.hyperDateList;
						chart_datas = data.hyperList;
					}
					if (disNm == "diabet") {
						// 일단 데이터 담아서
						chart_labels = data.diabetDateList;
						chart_datas = data.diabetList;
					}
					if (disNm == "cerebro") {
						// 일단 데이터 담아서
						chart_labels = data.cerebroDateList;
						chart_datas = data.cerebroList;
					}

					// 10개 초과인지 비교
					if (chart_labels.length > 10) {
						var startIndex = chart_labels.length - 10;
						var endIndex = chart_labels.length;
						// 10개 이하로 자름
						for (var i = startIndex; i < endIndex; i++) {
							chart_label.push(chart_labels[i]);
						}
					} else {
						// 삼항식
						disNm == "demen" ? chart_label = data.demenDateList
						: disNm == "arth" ? chart_label = data.arthDateList
						: disNm == "hyper" ? chart_label = data.hyperDateList
						: disNm == "diabet" ? chart_label = data.diabetDateList
						: disNm == "cerebro" ? chart_label = data.cerebroDateList
						: chart_label = "ERROR";
					}

					// 10개 초과인지 비교
					if (chart_datas.length > 10) {
						var startIndex = chart_datas.length - 10;
						var endIndex = chart_datas.length;
						// 10개 이하로 자름
						for (var i = startIndex; i < endIndex; i++) {
							chart_data.push(chart_datas[i]);
						}
					} else {
						// 삼항식
						disNm == "demen" ? chart_data = data.demenList
						: disNm == "arth" ? chart_data = data.arthList
						: disNm == "hyper" ? chart_data = data.hyperList
						: disNm == "diabet" ? chart_data = data.diabetList
						: disNm == "cerebro" ? chart_data = data.cerebroList
						: chart_data = 111;
					}

					console.log(chart_label);
					console.log(chart_data);

					new Chart($("#" + disNm + "Chart"), {
						type : 'line',
						data : {
							labels : chart_label,
							datasets : [{
								label : '진단검사 결과',
								data : chart_data,
								borderColor : function(context) {
									return generateGradient(context.chart.ctx,'#ff6384', '#ffcd56','#36a2eb')
								},
								backgroundColor : function(context) {
									return generateGradient(context.chart.ctx,'#ff6384', '#ffcd56', '#36a2eb')
								},
								pointStyle : 'circle',
								pointRadius : 5,
								pointHoverRadius : 15,
							}]
						},
						  options: {
							    responsive: true,
							    plugins: {
							      title: {
							        display: true,
							      }
							    },
							    scales: {
							      y: {
							        beginAtZero: true, // y축이 0부터 시작하도록 설정
							        max:20
							        // 각 항목별로 최대값 정하고 싶음!!!
							      }
							    }
							  }
							});
					},
				error : function() {
					alert("실패");
				}
			});// ajax
		}// drawChart
	</script>



</body>

</html>