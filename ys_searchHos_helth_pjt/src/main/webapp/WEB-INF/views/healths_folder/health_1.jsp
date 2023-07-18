<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="icon" href="../img/favicon.png" type="image/png">
	<title>Doctors</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../vendors/linericon/style.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="../vendors/animate-css/animate.css">
	<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style_ys.css">
	<link rel="stylesheet" href="../css/responsive.css">
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
									<li class="nav-item active">
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
									<li class="nav-item">
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
					<h2>Consultants</h2>
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="doctors.html">Consultants</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start team Area -->
	<section class="team-area section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>노인성 5대질환 자가진단</h1>
					<p>
						치매, 퇴행성 관절염, 고혈압, 당뇨병, 뇌혈관질환을 간단하게 진단합니다.<br>본 진단은 단순 참고용으로 의학적인 진단을 대체할 수 없습니다.
					</p>
				</div>
			</div>
			
<!-- 스타일 적용! 처음에 디스플레이 안.보.이.게 -->
<style>
  .demenTest{display: none;}
  .arthTest{display: none;}
  .hyperTest{display: none;}
  .diabetTest{display: none;}
  .cerebroTest{display: none;}
</style>

<script>
	// 디스플레이 숨기고 보여주는 함수
	function selectDemen() {
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".demenTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".demenTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectArth() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".arthTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectHyper() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".hyperTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectDiabet() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".diabetTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectCerebro() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".cerebroTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
        
   		// 결과창 숨겨놓기
    	$(document).ready(function(){
    		$(".demenResult").hide();
    	})
    	$(document).ready(function(){
    		$(".arthResult").hide();
    	})
    	$(document).ready(function(){
    		$(".hyperResult").hide();
    	})
    	$(document).ready(function(){
    		$(".diabetResult").hide();
    	})
    	$(document).ready(function(){
    		$(".cerebroResult").hide();
    	})        
        
        
	}
</script>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/demen.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectDemen()">
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>치매</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/arth.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectArth()">
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>퇴행성 관절염</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/hyper.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectHyper()">
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>고혈압</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/diabet.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectDiabet()">
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>당뇨병</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/cerebro.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectCerebro()">
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>뇌혈관질환</h4>
						</div>
					</div>
				</div>
			</div>
			
	<!--========== 치매 자가진단 ==========-->
	<form action="../health/health_2" name="demenTest" method="post">
	<div class="demenTest">
		<h3 class="c-tit01">내 기억력 점수는 몇 점 일까?</h3>
		<h4 class="c-tit02">치매 자가진단</h4>
		<table class="tbl-type02" style="width:100%">
			<colgroup>
				<col style="width:10%">
				<col style="width:70%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">문항</th>
					<th scope="col">예</th>
					<th scope="col">아니오</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<th scope="row">01</th>
						<td class="left">자신의 기억력에 문제가 있다고 생각한다.</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">자신의 기억력이 10년 전보다 나빠졌다고 생각한다.</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">자신의 기억력이 같은 또래의 다른 사람들에 비해 나쁘다고 생각한다.</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">기억력 저하로 인해 일상생활에 불편이 느껴진다.</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">최근에 일어난 일을 기억하는 것이 어렵다.</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">며칠 전에 나눈 대화 내용을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">며칠 전에 한 약속을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">친한 사람의 이름을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">물건 둔 곳을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
									<tr>
						<th scope="row">10</th>
						<td class="left">이전에 비해 물건을 자주 잃어버린다.</td>
						<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
						<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
					</tr>
									<tr>
						<th scope="row">11</th>
						<td class="left">집 근처에서 길을 잃은 적이 있다.</td>
						<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
						<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
					</tr>
									<tr>
						<th scope="row">12</th>
						<td class="left">가게에서 2-3가지 물건을 사려고 할 때 물건이름을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
						<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
					</tr>
									<tr>
						<th scope="row">13</th>
						<td class="left">가스불이나 전기불 끄는 것을 기억하기 어렵다.</td>
						<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
						<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
					</tr>
						<th scope="row">14</th>
						<td class="left">자주 사용하는 전화번호(자신 혹은 자녀의 집)를 기억하기 어렵다.</td>
						<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
						<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
					</tr>
				</tbody>
					</table>
					<div id="submitDemenBtn">
						<a onclick="demenSum()" class="submitBtn"><span>제출</span></a>
					</div>
						<div class="demenResult" style="display: none;">
							<div class="jagatest-result" id="result1">
								<p class="comm">당신의 <span class="spc" id="title1">~</span>는 <span class="spc" id="sum1">~</span> 입니다.</p>
								<p class="tit"><span class="spc" id="result_title1"></span></p>
								<p class="stxt"><span class="spc" id="result_content1"></span></p>
							</div>
						</div>
			</div>
		</form>
			
	<!--========== 퇴행성 관절염 자가진단 ==========-->
	<form action="../health/health_2" name="arthTest" method="post">
	<div class="arthTest">
		<h3 class="c-tit01">내 관절점수는 몇 점 일까?</h3>
		<h4 class="c-tit02">퇴행성 관절염 자가진단</h4>
		<table class="tbl-type02" style="width:100%">
			<colgroup>
				<col style="width:10%">
				<col style="width:70%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">문항</th>
					<th scope="col">예</th>
					<th scope="col">아니오</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<th scope="row">01</th>
						<td class="left">추운 날씨에 관절이 불편한 느낌이 든다.</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">계단이나 평지를 걸을 때 통증이 있다.</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">조금만 걸어도 무릎 관절이 부어오르거나 무릎에 물이 찬다.</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">앉았다가 일어나는 것이 힘들고 통증이 심하다.</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">아침에 일어난 후에 한참을 움직여야만 하루 생활이 가능하다.</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">눕는 것도 힘들고 누워 있다가 일어나는 것도 힘이 든다.</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">엉덩이 뼈(엉치)와 다리가 무거운 느낌이고 뻣뻣하며 뻑뻑한 뻐근한 느낌이 든다.</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">관절의 통증 때문에 숙면을 취하지 못한다.</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">O자나 X자로 다리모양이 변형되었다.(또는 변형되는 중이다.)</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
									<tr>
						<th scope="row">10</th>
						<td class="left">관절의 통증 때문에 보존적치료 (약물, 물리치료)를 받았으나 통증이 여전히 심하다.</td>
						<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
						<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
					</tr>
				</tbody>
					</table>
					<div id="submitArthBtn">
						<a onclick="arthSum()" class="submitBtn"><span>제출</span></a>
					</div>
						<div class="arthResult" style="display: none;">
							<div class="jagatest-result" id="result2">
								<p class="comm">당신의 <span class="spc" id="title2">~</span>는 <span class="spc" id="sum2">~</span> 입니다.</p>
								<p class="tit"><span class="spc" id="result_title2"></span></p>
								<p class="stxt"><span class="spc" id="result_content2"></span></p>
							</div>
						</div>
			</div>
		</form>
			
	<!--========== 고혈압 자가진단 ==========-->
	<form action="../health/health_2" name="hyperTest" method="post">
	<div class="hyperTest">
		<h3 class="c-tit01">내 혈압점수는 몇 점 일까?</h3>
		<h4 class="c-tit02">고혈압 자가진단</h4>
		<table class="tbl-type02" style="width:100%">
			<colgroup>
				<col style="width:10%">
				<col style="width:70%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">문항</th>
					<th scope="col">예</th>
					<th scope="col">아니오</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<th scope="row">01</th>
						<td class="left">손발이 저리다.</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">뒷머리가 아프다. 특히 아침에 심하다.</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">어지럽다.</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">심장이 두근거린다.</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">쉽게 피로하다.</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">코피가 자주 난다.</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">시야가 흐려지곤 한다.</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">갑자기 힘이 빠졌다가 금세 회복된다.</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">가슴이 조이듯 아프고 답답하다.</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
									<tr>
						<th scope="row">10</th>
						<td class="left">호흡이 불편하다.</td>
						<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
						<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
					</tr>
									<tr>
						<th scope="row">11</th>
						<td class="left">조금만 움직여도 숨이 찬다.</td>
						<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
						<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
					</tr>
									<tr>
						<th scope="row">12</th>
						<td class="left">귀에서 소리가 난다.</td>
						<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
						<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
					</tr>
									<tr>
						<th scope="row">13</th>
						<td class="left">정신이 혼란하고 착란 증세가 있다.</td>
						<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
						<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
					</tr>
									<tr>
						<th scope="row">14</th>
						<td class="left">혼자 중얼중얼한다.</td>
						<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
						<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
					</tr>
									<tr>
						<th scope="row">15</th>
						<td class="left">전반적인 행동이 일상에서 벗어난다.</td>
						<td><input type="radio" name="Q15" value="1" id="Q15_1"></td>
						<td><input type="radio" name="Q15" value="0" id="Q15_2"></td>
					</tr>
									<tr>
						<th scope="row">16</th>
						<td class="left">만성질환 치료제나 진통제의 복용이 잦다.</td>
						<td><input type="radio" name="Q16" value="1" id="Q16_1"></td>
						<td><input type="radio" name="Q16" value="0" id="Q16_2"></td>
					</tr>
									<tr>
						<th scope="row">17</th>
						<td class="left">피로감을 늘 느낀다.</td>
						<td><input type="radio" name="Q17" value="1" id="Q17_1"></td>
						<td><input type="radio" name="Q17" value="0" id="Q17_2"></td>
					</tr>
				</tbody>
					</table>
					<div id="submitHyperBtn">
						<a  onclick="hyperSum()" class="submitBtn"><span>제출</span></a>
					</div>
						<div class="hyperResult" style="display: none;">
							<div class="jagatest-result" id="result3">
								<p class="comm">당신의 <span class="spc" id="title3">~</span>는 <span class="spc" id="sum3">~</span> 입니다.</p>
								<p class="tit"><span class="spc" id="result_title3"></span></p>
								<p class="stxt"><span class="spc" id="result_content3"></span></p>
							</div>
						</div>
			</div>
		</form>
		
	<!--========== 당뇨병 자가진단 ==========-->
	<form action="../health/health_2" name="diabetTest" method="post">
	<div class="diabetTest">
		<h3 class="c-tit01">내 혈당점수는 몇 점 일까?</h3>
		<h4 class="c-tit02">당뇨병 자가진단</h4>
		<table class="tbl-type02" style="width:100%">
			<colgroup>
				<col style="width:10%">
				<col style="width:70%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">문항</th>
					<th scope="col">예</th>
					<th scope="col">아니오</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<th scope="row">01</th>
						<td class="left">목이 자주 마르고 침이 마른다.</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">소변을 누러 화장실 가는 횟수가 늘어났다.</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">아무리 먹어도 공복감이 생기고 식욕이 생긴다.</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">점점 살이 빠지고 몸이 야위어 간다.</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">항상 나른하고 매사가 귀찮다.</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">부스럼이 잘 일어나고 습진, 무좀이 생긴다.</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">눈에 초점이 잘 안 잡히는 증상이 잦다.</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">잇몸 염증이 자주 발생하고 피가 난다.</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">부모님 중에 당뇨 환자가 있다.</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
				</tbody>
					</table>
					<div id="submitDiabetBtn">
						<a onclick="diabetSum()" class="submitBtn"><span>제출</span></a>
					</div>
						<div class="diabetResult" style="display: none;">
							<div class="jagatest-result" id="result4">
								<p class="comm">당신의 <span class="spc" id="title4">~</span>는 <span class="spc" id="sum4">~</span> 입니다.</p>
								<p class="tit"><span class="spc" id="result_title4"></span></p>
								<p class="stxt"><span class="spc" id="result_content4"></span></p>
							</div>
						</div>
			</div>
		</form>
	
	<!--========== 뇌혈관질환 자가진단 ==========-->
	<form action="../health/health_2" name="cerebroTest" method="post">
	<div class="cerebroTest">
		<h3 class="c-tit01">내 뇌혈관점수는 몇 점 일까?</h3>
		<h4 class="c-tit02">뇌혈관질환 자가진단</h4>
		<table class="tbl-type02" style="width:100%">
			<colgroup>
				<col style="width:10%">
				<col style="width:70%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">문항</th>
					<th scope="col">예</th>
					<th scope="col">아니오</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<th scope="row">01</th>
						<td class="left">'이~' 하고 웃었을 때 좌우 모양이 다르다.</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">두 손을 뻗었을 때 한쪽 팔이 자꾸 처진다.</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">발음이 어눌하고 대화를 잘 이어가지 못한다.</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">양쪽 눈이 한쪽으로 쏠려있다.</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">얼굴, 팔, 다리에 감각이 없고 무겁게 느껴진다.</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">시야가 갑자기 어두워지거나 이내 괜찮아진다.</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">머리가 심하게 아프고 어지럽다.</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">중심을 잘 못 잡고 자꾸 넘어진다.</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
				</tbody>
					</table>
					<div id="submitCerebroBtn">
						<a onclick="cerebroSum()" class="submitBtn"><span>제출</span></a>
					</div>
						<div class="cerebroResult" style="display: none;">
							<div class="jagatest-result" id="result5">
								<p class="comm">당신의 <span class="spc" id="title5">~</span>는 <span class="spc" id="sum5">~</span> 입니다.</p>
								<p class="tit"><span class="spc" id="result_title5"></span></p>
								<p class="stxt"><span class="spc" id="result_content5"></span></p>
							</div>
						</div>
			</div>
		</form>
	
			
		</div>	
	</section>
	<!-- End team Area -->

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



<script>
	var result_Array = [["양호한 수준 입니다.","꾸준한 운동과 건강한 식습관으로 균형잡힌 생활을 유지하세요."],["주의가 필요합니다.","정기적인 검진을 받아 건강관리에 더욱 신경을 써야해요. 꾸준한 운동과 건강한 식습관의 개선은 예방에 도움이 됩니다."],["위험 단계입니다!","빠른 시일내 가까운 의료기관을 방문하셔서 보다 전문적인 검사를 받아보세요!"]]; 
	<!--========== 치매 자가진단 점수 ==========-->
	function demenSum() {
		var Q_total_count = $(".demenTest .tbl-type02 tbody tr").length;
  		var subject = 'demen';
  		var sub_Title = '치매 자가진단 점수';

		console.log(Q_total_count);
		
		var sum = 0;
		for(var i=1;i <=Q_total_count;i++){
			var v = ""; var data = 0;
			v = $("input[name=Q"+i+"]:checked");
			if(!v.val() && v.val() !== 0){
				alert("선택 되지 않은 항목이 있습니다.");
				return false;
			}
			data = $("input[name=Q"+i+"]:checked").val();
			sum = sum + parseInt(data);
		}// for
		// 체크개수 기준
		var result_title =""; var result_content ="";
		if(sum <= 3){
			result_title = result_Array[0][0];
			result_content = result_Array[0][1];
		}else if(sum <= 7){
			result_title = result_Array[1][0];
			result_content = result_Array[1][1];
		}else if(sum > 7){
			result_title = result_Array[2][0];
			result_content = result_Array[2][1];
		}
		$("#title1").text(sub_Title);
		$("#sum1").text(sum+"점");
		$("#result_title1").text(result_title);
		$("#result_content1").text(result_content);
		$(".demenResult").show("500ms"); // 결과창 나타내기

		var offset = $("#result1").offset();
        $('html, body').animate({scrollTop : offset.top - 300}, 400);
        
        // 다시하기와 추천버튼으로 바꾸기
        var htmlData = "";
        htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(0)")'+")' class='resetBtn'><span>다시하기</span></a>"; // n번째 form 태그 이하를 매개변수로 담아 보내기!
		htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
		$("#submitDemenBtn").html(htmlData);
		// +++++ DB에 치매점수 저장
        
	}
	
	<!--========== 퇴행성관절염 자가진단 점수 ==========-->
	function arthSum() {
		var Q_total_count = $(".arthTest .tbl-type02 tbody tr").length;
  		var subject = 'arth';
  		var sub_Title = '퇴행성관절염 자가진단 점수';

		console.log(Q_total_count);
		
		var sum = 0;
		for(var i=1;i <=Q_total_count;i++){
			var v = ""; var data = 0;
			v = $("input[name=Q"+i+"]:checked");
			if(!v.val() && v.val() !== 0){
				alert("선택 되지 않은 항목이 있습니다.");
				return false;
			}
			data = $("input[name=Q"+i+"]:checked").val();
			sum = sum + parseInt(data);
		}// for
		// 체크개수 기준
		var result_title =""; var result_content ="";
		if(sum <= 2){
			result_title = result_Array[0][0];
			result_content = result_Array[0][1];
		}else if(sum <= 5){
			result_title = result_Array[1][0];
			result_content = result_Array[1][1];
		}else if(sum > 5){
			result_title = result_Array[2][0];
			result_content = result_Array[2][1];
		}
		$("#title2").text(sub_Title);
		$("#sum2").text(sum+"점");
		$("#result_title2").text(result_title);
		$("#result_content2").text(result_content);
		$(".arthResult").show("500ms"); // 결과창 나타내기

		var offset = $("#result2").offset();
        $('html, body').animate({scrollTop : offset.top - 300}, 400);
        
        // 다시하기와 추천버튼으로 바꾸기
        var htmlData = "";
		htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(1)")'+")' class='resetBtn'><span>다시하기</span></a>";
		htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
		$("#submitArthBtn").html(htmlData);
		// DB
        
	} 
	
	<!--========== 고혈압 자가진단 점수 ==========-->
	function hyperSum() {
		var Q_total_count = $(".hyperTest .tbl-type02 tbody tr").length;
  		var subject = 'hyper';
  		var sub_Title = '고혈압 자가진단 점수';

		console.log(Q_total_count);
		
		var sum = 0;
		for(var i=1;i <=Q_total_count;i++){
			var v = ""; var data = 0;
			v = $("input[name=Q"+i+"]:checked");
			if(!v.val() && v.val() !== 0){
				alert("선택 되지 않은 항목이 있습니다.");
				return false;
			}
			data = $("input[name=Q"+i+"]:checked").val();
			sum = sum + parseInt(data);
		}// for
		// 체크개수 기준
		var result_title =""; var result_content ="";
		if(sum <= 3){
			result_title = result_Array[0][0];
			result_content = result_Array[0][1];
		}else if(sum <= 9){
			result_title = result_Array[1][0];
			result_content = result_Array[1][1];
		}else if(sum > 9){
			result_title = result_Array[2][0];
			result_content = result_Array[2][1];
		}
		$("#title3").text(sub_Title);
		$("#sum3").text(sum+"점");
		$("#result_title3").text(result_title);
		$("#result_content3").text(result_content);
		$(".hyperResult").show("500ms"); // 결과창 나타내기

		var offset = $("#result3").offset();
        $('html, body').animate({scrollTop : offset.top - 300}, 400);
        
    	 // 다시하기와 추천버튼으로 바꾸기
    	var htmlData = "";
		htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(2)")'+")' class='resetBtn'><span>다시하기</span></a>";
		htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
		$("#submitHyperBtn").html(htmlData);
		// DB
		
	} 
	
	<!--========== 당뇨병 자가진단 점수 ==========-->
	function diabetSum() {
		var Q_total_count = $(".diabetTest .tbl-type02 tbody tr").length;
  		var subject = 'diabet';
  		var sub_Title = '당뇨병 자가진단 점수';

		console.log(Q_total_count);
		
		var sum = 0;
		for(var i=1;i <=Q_total_count;i++){
			var v = ""; var data = 0;
			v = $("input[name=Q"+i+"]:checked");
			if(!v.val() && v.val() !== 0){
				alert("선택 되지 않은 항목이 있습니다.");
				return false;
			}
			data = $("input[name=Q"+i+"]:checked").val();
			sum = sum + parseInt(data);
		}// for
		// 체크개수 기준
		var result_title =""; var result_content ="";
		if(sum <= 2){
			result_title = result_Array[0][0];
			result_content = result_Array[0][1];
		}else if(sum <= 5){
			result_title = result_Array[1][0];
			result_content = result_Array[1][1];
		}else if(sum > 5){
			result_title = result_Array[2][0];
			result_content = result_Array[2][1];
		}
		$("#title4").text(sub_Title);
		$("#sum4").text(sum+"점");
		$("#result_title4").text(result_title);
		$("#result_content4").text(result_content);
		$(".diabetResult").show("500ms"); // 결과창 나타내기

		var offset = $("#result4").offset();
        $('html, body').animate({scrollTop : offset.top - 300}, 400);
        
   		// 다시하기와 추천버튼으로 바꾸기
        var htmlData = "";
		htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(3)")'+")' class='resetBtn'><span>다시하기</span></a>";
		htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
		$("#submitDiabetBtn").html(htmlData);
		// DB
        
	} 
	
	<!--========== 뇌혈관질환 자가진단 점수 ==========-->
	function cerebroSum() {
		var Q_total_count = $(".cerebroTest .tbl-type02 tbody tr").length;
  		var subject = 'cerebro';
  		var sub_Title = '뇌혈관질환 자가진단 점수';

		console.log(Q_total_count);
		
		var sum = 0;
		for(var i=1;i <=Q_total_count;i++){
			var v = ""; var data = 0;
			v = $("input[name=Q"+i+"]:checked");
			if(!v.val() && v.val() !== 0){
				alert("선택 되지 않은 항목이 있습니다.");
				return false;
			}
			data = $("input[name=Q"+i+"]:checked").val();
			sum = sum + parseInt(data);
		}// for
		// 체크개수 기준
		var result_title =""; var result_content ="";
		if(sum == 0){
			result_title = result_Array[0][0];
			result_content = result_Array[0][1];
		}else if(sum > 0){
			result_title = result_Array[2][0];
			result_content = result_Array[2][1];
		}
		$("#title5").text(sub_Title);
		$("#sum5").text(sum+"점");
		$("#result_title5").text(result_title);
		$("#result_content5").text(result_content);
		$(".cerebroResult").show("500ms"); // 결과창 나타내기

		var offset = $("#result5").offset();
        $('html, body').animate({scrollTop : offset.top - 300}, 400);
        
    	// 다시하기와 추천버튼으로 바꾸기
        var htmlData = "";
		htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(4)")'+")' class='resetBtn'><span>다시하기</span></a>";
		htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
		$("#submitCerebroBtn").html(htmlData);
		// DB
        
	} 
	
	<!--========== 다시하기 버튼 ==========-->	
	function resetBtn(fidx) {
		var htmlData = "";
		var Q_total_count = "";
		
		if (fidx.html().includes("치매")) {
			// 라디오 버튼 초기화
			Q_total_count = $(".demenTest .tbl-type02 tbody tr").length;
			for (var i=1; i<=Q_total_count; i++) {
				$("input:radio[name='Q"+i+"']").prop('checked', false);
			}
			// 결과창 숨기고
			$(".demenResult").hide("200ms");
			// 스크롤 위로 이동
			var offset = $(".demenTest").offset();
	        $('html, body').animate({scrollTop : offset.top-500}, 400);
			// 제출버튼으로 바꿈
			htmlData += "<a onclick=\"submitBtn('demenTest'); demenSum()\" class='submitBtn'><span>제출</span></a>";
			$("#submitDemenBtn").html(htmlData);
			// +++++ DB 삭제
		}
		else if (fidx.html().includes("arth")) {
			// 라디오 버튼 초기화
			Q_total_count = $(".arthTest .tbl-type02 tbody tr").length;
			for (var i=1; i<=Q_total_count; i++) {
				$("input:radio[name='Q"+i+"']").prop('checked', false);
			}
			// 결과창 숨기고
			$(".arthResult").hide("200ms");
			// 스크롤 위로 이동
			var offset = $(".arthTest").offset();
	        $('html, body').animate({scrollTop : offset.top-500}, 400);
			// 제출버튼으로 바꿈
			htmlData += "<a onclick=\"submitBtn('arthTest'); arthSum()\" class='submitBtn'><span>제출</span></a>";
			$("#submitArthBtn").html(htmlData);
			// DB 삭제
		}
		else if (fidx.html().includes("hyper")) {
			// 라디오 버튼 초기화
			Q_total_count = $(".hyperTest .tbl-type02 tbody tr").length;
			for (var i=1; i<=Q_total_count; i++) {
				$("input:radio[name='Q"+i+"']").prop('checked', false);
			}
			// 결과창 숨기고
			$(".hyperResult").hide("200ms");
			// 스크롤 위로 이동
			var offset = $(".hyperTest").offset();
	        $('html, body').animate({scrollTop : offset.top-500}, 400);
			// 제출버튼으로 바꿈
			htmlData += "<a onclick=\"submitBtn('hyperTest'); hyperSum()\" class='submitBtn'><span>제출</span></a>";
			$("#submitHyperBtn").html(htmlData);
			// DB 삭제
		}
		else if (fidx.html().includes("diabet")) {
			// 라디오 버튼 초기화
			Q_total_count = $(".diabetTest .tbl-type02 tbody tr").length;
			for (var i=1; i<=Q_total_count; i++) {
				$("input:radio[name='Q"+i+"']").prop('checked', false);
			}
			// 결과창 숨기고
			$(".diabetResult").hide("200ms");
			// 스크롤 위로 이동
			var offset = $(".diabetTest").offset();
	        $('html, body').animate({scrollTop : offset.top-500}, 400);
			// 제출버튼으로 바꿈
			htmlData += "<a onclick=\"submitBtn('diabetTest'); diabetSum()\" class='submitBtn'><span>제출</span></a>";
			$("#submitDiabetBtn").html(htmlData);
			// DB 삭제
		}
		else if (fidx.html().includes("cerebro")) {
			// 라디오 버튼 초기화
			Q_total_count = $(".cerebroTest .tbl-type02 tbody tr").length;
			for (var i=1; i<=Q_total_count; i++) {
				$("input:radio[name='Q"+i+"']").prop('checked', false);
			}
			// 결과창 숨기고
			$(".cerebroResult").hide("200ms");
			// 스크롤 위로 이동
			var offset = $(".cerebroTest").offset();
	        $('html, body').animate({scrollTop : offset.top-500}, 400);
			// 제출버튼으로 바꿈
			htmlData += "<a onclick=\"submitBtn('cerebroTest'); cerebroSum()\" class='submitBtn'><span>제출</span></a>";
			$("#submitCerebroBtn").html(htmlData);
			// DB 삭제
		}
	}// resetBtn
	
	
	<!--========== 추천버튼 ==========-->
	function resultBtn() {
		demenTest.submit();
		arthTest.submit();
		hyperTest.submit();
		diabetTest.submit();
		cerebroTest.submit();
	}
	
</script>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
</body>

</html>