<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
<link rel="icon" href="../img/favicon.png" type="../image/png">
<title>Hospice Medical</title>
<!-- i class 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script type="application/javascript"
	src="https://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

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
<link rel="stylesheet" href="../css/style_jiin.css">
<link rel="stylesheet" href="../css/style_ys.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/responsive.css">
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
					<h2>자유 / 일상 게시판</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a> <a
							href="madang_1.jsp">클릭하시면 [ 자유 / 일상 게시판 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start Offered Services Area -->

	<section class="service_area section_gap1">
		<div class="container1">
			<div class="left-area">
				<!-- 사이드바 영역 카테고리 메뉴 -->
				<div data-include-path="/madangs_folder/madang_list"></div>
				<!-- 사이드바 영역 카테고리 메뉴 -->
			</div>
			<!--====게시판====-->
			<div class="right-area">
				<div class="right_contents_wrap">
					<h3>자유 / 일상 게시판</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>특정 개인 및 단체에 대한 비난, 상업성 광고, 허위사실 유포, 동일 또는 유사한 내용의 반복적 게시
								등 법령을 위반하거나 홈페이지의 정상적인 운영에 지장을 초래하는 경우는 운영규칙에 의거하여 삭제될 수 있습니다.</li>
							<li>또한, 개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기
								바랍니다.</li>
							</p>
						</div>
						<div class="block table-responsive grid-view">
							<table class="table table-bordered">
								<colgroup>
									<col style="width: 15%;">
									<col>
									<col style="width: 15%;">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th colspan="4">
											<div class="col-md-12">
												<span class="ico-new"><img
													src="/resources/common/images/ico_new.gif" alt="New"></span>
												<span>${mdto.getBoard_title()}</span>
											</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>등록자명</th>
										<td>${mdto.auth_nickname}</td>
										<th>등록일</th>
										<td>${mdto.board_created}</td>
									</tr>
									<tr>
										<th>조회수</th>
										<td colspan="3">${mdto.board_view}</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="col-md-9">


												<script type="text/javascript">
													$(function() {
														var editrUseAt = "N";
														if (1 == 1
																&& true
																&& editrUseAt != 'Y') {
															if ("value" == "form") {
																var id = "lngtCn";
																var innerText = document
																		.getElementById(id).innerHTML;
																innerText = htmldecode(innerText);
																document
																		.getElementById(id).innerHTML = innerText;
															}
														}
													});
													function htmldecode(s) {
														if (typeof s != "undefined"
																&& s != null
																&& s != "") {
															s = s.replace(
																	/&amp;/g,
																	"&");
															s = s.replace(
																	/&lt;/g,
																	"<");
															s = s.replace(
																	/&gt;/g,
																	">");
															s = s.replace(
																	/&quot;/g,
																	'\"');
															s = s.replace(
																	/&apos;/g,
																	'\'');
															s = s.replace(
																	/&#059;/g,
																	";");
															s = s.replace(
																	/&#091;/g,
																	"[");
															s = s.replace(
																	/&#093;/g,
																	"]");
															s = s.replace(
																	/&#092;/g,
																	"\\");
															s = s.replace(
																	/&#061;/g,
																	"=");
														} else {
															s = '';
														}
														return s;
													};
												</script>
												<div class="board-contents">${mdto.board_contents}</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //리스트 -->
					</div>

					<div id="mypage">
						<!-- 이전다음글 -->
						<div class="pnDiv web">
							<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext"
								border="1" cellspacing="0">
								<colgroup>
									<col width="100px">
									<col width="*">
									<col width="100px">
								</colgroup>
								<tbody>

									<tr>
										<th class="next">다음글</th>
										<c:if test="${nextMdto.board_no == null}">
											<td>(다음 글이 존재하지 않습니다.)</td>
										</c:if>
										<c:if test="${nextMdto.board_no != null}">
											<td><a href="#">${nextMdto.board_title}</a></td>
										</c:if>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<th class="pre">이전글</th>
										<c:if test="${prevMdto.board_no == null}">
											<td>(이전 글이 존재하지 않습니다.)</td>
										</c:if>
										<c:if test="${prevMdto.board_no != null}">
											<td><a href="#">${prevMdto.board_title}</a></td>
										</c:if>
										<td>&nbsp;</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //이전다음글 -->
						<script>
							function commentBtn() {
								const replynumCheckbox = $(".replynum"); // replynum 클래스 이름을 가진 체크박스 요소를 가져옴

								if (replynumCheckbox.prop("checked")) {
									alert("비밀글 여부: on");
									$(".replynum").prop("checked", false);// 비밀댓글쓰고 체크박스 초기화
								} else {
									alert("비밀글 여부: off");

								}
							}// commentBtn
						</script>






						<!-- 댓글-->
						<div class="replyWrite">
							<ul>
								<li class="in">
									<p class="txt">
										총 <span class="orange">${list.size()}</span> 개의 댓글이 달려있습니다.
									</p> <label><p class="password">
											비밀글 여부 &nbsp; <input role="switch" type="checkbox"
												class="replynum">
										</p></label> <textarea class="replyType"></textarea>
								</li>
								<li class="btn"><a onclick="commentBtn()" class="replyBtn">등록</a></li>
							</ul>
							<p class="ntic">※ 비밀글 버튼을 활성화하시면 게시글 작성자에게만 보이는 비밀글로 등록됩니다.</p>
						</div>

						<div class="replyBox">
							<!-- 댓글 수정 -->
							<!-- 
			<ul>
				<li class="name">jjabcde <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></li>
				<li class="txt"><textarea class="replyType">댓글수정할때</textarea></li>
				<li class="btn">
					<a href="#" class="rebtn">수정</a>
					<a href="#" class="rebtn">삭제</a>
				</li>
			</ul>
			 -->
							<c:forEach var="cdto" items="${list}">
								<!-- 일반댓글, 본인이 쓴 댓글 -->
								<c:if test="${cdto.comment_private == 0}">
									<c:if test="${sessionId == cdto.auth_id}">
										<ul>
											<li class="name">${cdto.auth_nickname}<span>[${cdto.comment_date}]</span></li>
											<li class="txt">${cdto.comment_content}</li>
											<li class="btn"><a href="#" class="rebtn">수정</a> <a
												href="#" class="rebtn">삭제</a></li>
										</ul>
									</c:if>
								</c:if>

								<!-- 일반댓글, 다른사람이 쓴 댓글 -->
								<c:if test="${cdto.comment_private == 0}">
									<c:if test="${sessionId != cdto.auth_id}">
										<ul>
											<li class="name">${cdto.auth_nickname}<span>[${cdto.comment_date}]</span></li>
											<li class="txt">${cdto.comment_content}</li>
										</ul>
									</c:if>
								</c:if>

								<!-- 비밀댓글, 본인이 쓴 댓글 -->
								<c:if test="${cdto.comment_private == 1}">
									<c:if test="${sessionId == cdto.auth_id}">
										<ul>
											<li class="name">${cdto.auth_nickname}<span>[${cdto.comment_date}]</span></li>
											<li class="txt">${cdto.comment_content}</li>
											<li class="btn"><a href="#" class="rebtn">수정</a> <a
												href="#" class="rebtn">삭제</a></li>
										</ul>
									</c:if>
								</c:if>

								<!-- 비밀댓글, 다른사람이 쓴 댓글 -->
								<c:if test="${cdto.comment_private == 1}">
									<c:if test="${sessionId != cdto.auth_id}">
										<ul>
											<li class="name">${cdto.auth_nickname}<span>[${cdto.comment_date}]</span></li>
											<li class="txt"><a href="password.html"
												class="passwordBtn"><span class="orange">※
														비밀글입니다.</span></a></li>
										</ul>
									</c:if>
								</c:if>
							</c:forEach>


						</div>
						<!-- //댓글 -->
						<!-- 버튼 -->
						<div class="row block btn-group-wrap">
							<div class="col-sm-12 btn-group">
								<div class="pull-right">
									<a href="/login/vnameLogin.do?q_bbsCode=1013"
										class="btnType02 btn btn-info"> <span>목록</span>
									</a>
								</div>
							</div>
						</div>
						<!-- //버튼 -->
					</div>


					<script type="text/javascript"
						src="/resources/libs/form-3.51.0/jquery.form.js"></script>
				</div>
			</div>
			<!--====게시판====-->







		</div>
	</section>

	<!-- End Offered Services Area -->
	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
	<!-- End footer Area -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- 스크립트 라이브러리 -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<!-- <script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script> -->
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<!-- 스크립트 : 링크 연결 -->
	<script>
		window.addEventListener('load', function () {
			var allElements = document.getElementsByTagName('*');
			Array.prototype.forEach.call(allElements, function (el) {
				var includePath = el.dataset.includePath;
				if (includePath) {
					var xhttp = new XMLHttpRequest();
					xhttp.onreadystatechange = function () {
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

</body>

</html>