<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="/img/favicon.png" type="image/png">
	<title>Doctors</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/vendors/linericon/style.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="/vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/responsive.css">
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
					<h1>Our Offered Services</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>
			
<!-- 스타일 적용! 처음에 디스플레이 안.보.이.게 -->
<style>
  .demenTest{display: none;}
  .arthTest{display: none;}
</style>

<script>
	function selectDemen() {
		alert("치매");
		$.ajax({
			url:"/health/demen.html",
			type:"get",
			success: function(){
				alert("성공~");
			}
		});
	}
	
	function selectArth() {
		alert("퇴행성관절염");
		$(".arthTest").css("display","block"); /* 디스플레이를 보.이.게! */
	}
	
</script>

			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="/img/t1.jpg" alt="">
						<div class="align-items-end justify-content-center d-flex">
							<div class="social-links" onclick="selectDemen()">
							</div>
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>치매</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="/img/t2.jpg" alt="">
						<div class="align-items-end justify-content-center d-flex">
							<div class="social-links" onclick="selectArth()">
							</div>
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>퇴행성 관절염</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="/img/t3.jpg" alt="">
						<div class="align-items-end justify-content-center d-flex">
							<div class="social-links">
							</div>
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>고혈압</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="/img/t4.jpg" alt="">
						<div class="align-items-end justify-content-center d-flex">
							<div class="social-links">
							</div>
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>당뇨병</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="/img/t1.jpg" alt="">
						<div class="align-items-end justify-content-center d-flex">
							<div class="social-links">
							</div>
							<p>
								자가진단 하러가기 >>
							</p>
							<h4>뇌혈관질환</h4>
						</div>
					</div>
				</div>
			</div>
			<div id="result"></div>
<!-- 			
	========== 치매 자가진단 ==========
	<div class="demenTest">
		<h3 class="c-tit01">나는 얼마나 짜게 먹을까?</h3>
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
						<td class="left">자신의 기억력에 문제가 있다고 생각하십니까?</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">자신의 기억력이 10년 전보다 나빠졌다고 생각하십니까?</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">자신의 기억력이 같은 또래의 다른 사람들에 비해 나쁘다고 생각하십니까?</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">기억력 저하로 인해 일상생활에 불편을 느끼십니까?</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">최근에 일어난 일을 기억하는 것이 어렵습니까?</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">며칠 전에 나눈 대화 내용을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">며칠 전에 한 약속을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">친한 사람의 이름을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">물건 둔 곳을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
									<tr>
						<th scope="row">10</th>
						<td class="left">이전에 비해 물건을 자주 잃어버립니까?</td>
						<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
						<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
					</tr>
									<tr>
						<th scope="row">11</th>
						<td class="left">집 근처에서 길을 잃은 적이 있습니까?</td>
						<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
						<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
					</tr>
									<tr>
						<th scope="row">12</th>
						<td class="left">가게에서 2-3가지 물건을 사려고 할 때 물건이름을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
						<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
					</tr>
									<tr>
						<th scope="row">13</th>
						<td class="left">가스불이나 전기불 끄는 것을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
						<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
					</tr>
						<th scope="row">14</th>
						<td class="left">자주 사용하는 전화번호(자신 혹은 자녀의 집)를 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
						<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
					</tr>
				</tbody>
					</table>
					<a id="resultBtn" href="#" class="resultBtn"><span>확인</span></a>
			</div>
			 -->
	<!--========== 퇴행성관절염 자가진단 ==========-->
	<div class="arthTest">
		<h3 class="c-tit01">나는 얼마나 짜게 먹을까?</h3>
		<h4 class="c-tit02">퇴행성관절염 자가진단</h4>
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
						<td class="left">자신의 기억력에 문제가 있다고 생각하십니까?</td>
						<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
						<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
					</tr>
									<tr>
						<th scope="row">02</th>
						<td class="left">자신의 기억력이 10년 전보다 나빠졌다고 생각하십니까?</td>
						<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
						<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
					</tr>
									<tr>
						<th scope="row">03</th>
						<td class="left">자신의 기억력이 같은 또래의 다른 사람들에 비해 나쁘다고 생각하십니까?</td>
						<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
						<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
					</tr>
									<tr>
						<th scope="row">04</th>
						<td class="left">기억력 저하로 인해 일상생활에 불편을 느끼십니까?</td>
						<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
						<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
					</tr>
									<tr>
						<th scope="row">05</th>
						<td class="left">최근에 일어난 일을 기억하는 것이 어렵습니까?</td>
						<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
						<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
					</tr>
									<tr>
						<th scope="row">06</th>
						<td class="left">며칠 전에 나눈 대화 내용을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
						<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
					</tr>
									<tr>
						<th scope="row">07</th>
						<td class="left">며칠 전에 한 약속을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
						<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
					</tr>
									<tr>
						<th scope="row">08</th>
						<td class="left">친한 사람의 이름을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
						<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
					</tr>
									<tr>
						<th scope="row">09</th>
						<td class="left">물건 둔 곳을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
						<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
					</tr>
									<tr>
						<th scope="row">10</th>
						<td class="left">이전에 비해 물건을 자주 잃어버립니까?</td>
						<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
						<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
					</tr>
									<tr>
						<th scope="row">11</th>
						<td class="left">집 근처에서 길을 잃은 적이 있습니까?</td>
						<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
						<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
					</tr>
									<tr>
						<th scope="row">12</th>
						<td class="left">가게에서 2-3가지 물건을 사려고 할 때 물건이름을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
						<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
					</tr>
									<tr>
						<th scope="row">13</th>
						<td class="left">가스불이나 전기불 끄는 것을 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
						<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
					</tr>
						<th scope="row">14</th>
						<td class="left">자주 사용하는 전화번호(자신 혹은 자녀의 집)를 기억하기 어렵습니까?</td>
						<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
						<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
					</tr>
							</tbody>
				</table>
					<a id="resultBtn" href="#" class="resultBtn"><span>확인</span></a>
			</div>
			
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



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/popper.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="/js/jquery.ajaxchimp.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="/js/mail-script.js"></script>
	<script src="/js/custom.js"></script>
</body>

</html>