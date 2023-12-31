<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
	<link rel="icon" href="../img/favicon.png" type="../image/png">
	<title>Hospice Medical</title>
	<!-- i class 아이콘 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

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
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/responsive.css">
</head>

<body>



	<!--================Header Menu Area =================-->
	<div data-include-path="../senicare_sub_header.jsp"></div>

	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>자유 / 일상 게시판</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="madang_1.jsp">클릭하시면 [ 자유 / 일상 게시판 ] 페이지를 새로 고침합니다.</a>
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
				<div data-include-path="../madangs_folder/madang_list"></div>
				<!-- 사이드바 영역 카테고리 메뉴 -->
			</div>


			<!--====게시판====-->
			<div class="right-area">
				<div class="right_contents_wrap">
					<h3>자유 / 일상 게시판</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">

							<p class="descript">
								본 게시판은 인제군 관내 구직을 위한 게시판입니다.<br>
								본래의 취지와 관계없는 광고, 온라인 회원 모집, 휴대폰 가입홍보 등의 광고 글은 사전예고없이 삭제 되오니 이점 양해하여 주시기 바라며, 게시물의
								특성상 연락처를 올리실 경우 개인정보가 유출될 수 있으니 주의하여 주시고 일정 시간일 지난 후 자동삭제 되도록 조치하여 주시기 바랍니다.&nbsp;
							</p>
						</div>

						<div class="boSrchArea">
							<div class="boMeta">

								<span class="boMeta-pt"> 총 </span>
								36828
								건
							</div>
							<!-- 게시판 검색창 바 -->
							<form name="mForm" method="post" class="boSrch ">
								<input type="hidden" name="pageIndex" value="1"> <input type="hidden" name="mode">
								<input type="hidden" name="firstYN" value="N">
								<fieldset>
									<div class="txSrch">
										<select id="boSelect" class="boSrch-selectBox skinSelectBox"
											name="searchCondition">
											<option value="TITLE">제목</option>
											<option value="NAME">작성자</option>
											<option value="CONTENT">내용</option>
										</select>
										<input type="text" id="boSearch" name="searchKeyword" value="검색어를 입력해 주세요."
											onfocus="if (this.value== '검색어를 입력해 주세요.') {this.value='';};"
											class="boSrch-iptTxt skinIptTxt"> <input type="submit" value="검색"
											onclick="linkPage('1');" class="boSrch-btnBo skinBtnBo skinBtnBo-data-pos">
									</div>
								</fieldset>
							</form>
						</div>
		

						<div>
							<table class="skinTb skinTb-data-resList skinTb-data-bgEven">
								<!-- <caption class="blind">게시판 제목</caption> -->
								<thead data-hidden="mob" class="board_thead">
									<tr>
										<th scope="col" data-hidden="tablet">번호</th>
										<th scope="col" class="skinTb-sbj" data-seq="first">제목</th>

										<th scope="col">작성자</th>
										<th scope="col" class="skinTb-date">등록일</th>

										<th scope="col" data-hidden="tablet">조회수</th>
									</tr>
								</thead>
								<tbody class="board_tbody" >

									<tr>
										<td class="skinTxa-center" data-hidden="tablet">
											36828
										</td>
										<td class="skinTb-sbj" data-seq="first">
											<a href="/portal/participation/job/recruit?articleSeq=212311"
												onclick="goPage(this.href); return false;">
												인제자담치킨 알바생 구합니다.

												<img src="/page/common/images/ico-new.png" alt="새 게시물" class="icoNew">
											</a>
										</td>

										<td class="skinTb-name skinTxa-center">
											박융희
										</td>
										<td class="skinTb-date skinTxa-center">2023-07-16</td>

										<td class="skinTxa-center" data-hidden="tablet">95</td>
									</tr>

									<tr>
										<td class="skinTxa-center" data-hidden="tablet">
											36827
										</td>
										<td class="skinTb-sbj" data-seq="first">
											<a href="/portal/participation/job/recruit?articleSeq=212308"
												onclick="goPage(this.href); return false;">
												구인합니다.(학생지원가능)

												<img src="/page/common/images/ico-new.png" alt="새 게시물" class="icoNew">
											</a>
										</td>

										<td class="skinTb-name skinTxa-center">
											이성오
										</td>
										<td class="skinTb-date skinTxa-center">2023-07-16</td>

										<td class="skinTxa-center" data-hidden="tablet">107</td>
									</tr>

									<tr>
										<td class="skinTxa-center" data-hidden="tablet">
											36826
										</td>
										<td class="skinTb-sbj" data-seq="first">
											<a href="/portal/participation/job/recruit?articleSeq=212295"
												onclick="goPage(this.href); return false;">
												중소형 이사운반 및 작업보조 아르바이트 구합니다.
											</a>
										</td>
										<td class="skinTb-name skinTxa-center">
											이벽
										</td>
										<td class="skinTb-date skinTxa-center">2023-07-15</td>

										<td class="skinTxa-center" data-hidden="tablet">120</td>
									</tr>

									<tr>
										<td class="skinTxa-center" data-hidden="tablet">
											36825
										</td>
										<td class="skinTb-sbj" data-seq="first">

											<a href="/portal/participation/job/recruit?articleSeq=212286"
												onclick="goPage(this.href); return false;">
												(합자)용대향토기업 채용공고
											</a>
										</td>

										<td class="skinTb-name skinTxa-center">
											송민아
										</td>
										<td class="skinTb-date skinTxa-center">2023-07-14</td>

										<td class="skinTxa-center" data-hidden="tablet">147</td>
									</tr>

									<tr>
										<td class="skinTxa-center" data-hidden="tablet">
											36824
										</td>
										<td class="skinTb-sbj" data-seq="first">
											<a href="/portal/participation/job/recruit?articleSeq=212285"
												onclick="goPage(this.href); return false;">
												2023 주식회사 북설악 채용 공고
											</a>
										</td>
										<td class="skinTb-name skinTxa-center">
											권영준
										</td>
										<td class="skinTb-date skinTxa-center">2023-07-14</td>

										<td class="skinTxa-center" data-hidden="tablet">190</td>


								</tbody>
							</table>
						</div>
						<div class="pager">
							<a href="?pageIndex=1" class="pager-link pager-link-data-first"
								onclick="linkPage(1);return false;">
								<i class="fas fa-fast-backward" aria-label="10페이지 앞으로 이동
									"></i></a>
							<a href="?pageIndex=1" class="pager-link pager-link-data-prev"
								onclick="linkPage(1);return false;">
								<i class="fas fa-step-backward" aria-label="1페이지 앞으로 이동"></i>
							</a>
							<span class="pager-num">1/1842</span>
							<a onclick="return false;" class="pager-link active">1</a>
							<a href="?pageIndex=2" class="pager-link" onclick="linkPage(2);return false;">
								2
							</a>
							<a href="?pageIndex=3" class="pager-link" onclick="linkPage(3);return false;">
								3
							</a>
							<a href="?pageIndex=4" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(4);return false;">
								4
							</a>
							<a href="?pageIndex=5" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(5);return false;">
								5
							</a>
							<a href="?pageIndex=6" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(6);return false;">
								6
							</a>
							<a href="?pageIndex=7" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(7);return false;">
								7
							</a>
							<a href="?pageIndex=8" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(8);return false;">
								8
							</a>
							<a href="?pageIndex=9" class="pager-link pager-link-data-ellipsis"
								onclick="linkPage(9);return false;">
								9
							</a>
							<a href="?pageIndex=10" class="pager-link" onclick="linkPage(10);return false;">
								10
							</a>
							<a href="?pageIndex=2" onclick="linkPage(2);return false;"
								class="pager-link pager-link-data-next" aria-label="1페이지 뒤로 이동">
								<i class="fas fa-step-forward"></i>
							</a>
							<a href="?pageIndex=11" onclick="linkPage(11);return false;"
								class="pager-link pager-link-data-last">
								<i class="fas fa-fast-forward" aria-label="10페이지 뒤로 이동"></i>
							</a>


						</div>


						<div class="skinTxa-right">
							<a href="/portal/participation/job/recruit?mode=write" class="skinBtnBo_write" >
								글쓰기 </a>
						</div>









						<div class="popAlert popAlert-data-passConfirm skinTxa-center" data-alert-name="passConfirm"
							style="display: none;" id="passConfirmContainer">
							<div class="popAlert-inner">
								<div class="popAlert-tit">
									비밀번호 확인
								</div>

								<form id="confirmFormCopy" method="post" name="confirmFormCopy"></form>
								<form id="confirmForm" name="confirmForm" method="post">
									<input type="hidden" name="returnUrl" value="/portal/participation/job/recruit">
									<input type="hidden" name="boardCode" value="BD000145">
									<input type="hidden" name="articleSeq" value="0">
									<label for="PassWord" class="skinMb-small">글 작성 시 입력한 비밀번호를 입력해주세요.</label>
									<input type="password" id="PassWord" name="password"
										class="skinIptPass col7 skinMb-small passFormEnterPress" autocomplete="off"
										maxlength="20">
								</form>

								<div>
									<a href="#nolink" onclick="confirmFormCheck();"
										class="col5 skinFont-bold skinTxa-center skinBtnBo skinBtnBo-data-neg">확인</a>
									<a href="#nolink" onclick="passConfirmContainerClose();"
										class="col5 skinFont-bold skinTxa-center skinBtnBo skinBtnBo-data-pos">취소</a>
								</div>
							</div>
						</div>
	</section>
	</div>
	</div>
	</div>
	<!--====게시판====-->
	</div>
	</section>

	<!-- End Offered Services Area -->


	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer.jsp"></div>
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
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
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

	<!-- 게시판 스크립트 -->
	<script>
		var userMode = '';
		var seq = 0;
		function showPassConfirmContainer(mode, articleSeq) {
			var $container = $('#passConfirmContainer');
			var style = {
				'position': 'fixed'
				, 'top': '50%'
				, 'left': '50%'
				, 'margin-top': -$container.outerHeight() / 2 + 'px'
				, 'margin-left': -$container.outerWidth() / 2 + 'px'
				, 'z-index': 99999
			};

			$container.css(style).show();

			var initCss = {
				position: 'static'
			}
			$('#Sub').css(initCss);
			$('#Ftr').css(initCss);

			userMode = mode;
			seq = articleSeq;

		}

		function passConfirmContainerClose() {
			var $container = $('#passConfirmContainer');
			$container.find('input[name="password"]').val('');
			$container.hide();
			var initCss = {
				position: 'relative'
			}
			$('#Sub').css(initCss);
			$('#Ftr').css(initCss);

		}

		function confirmFormCheck() {
			var $form = $('#confirmForm');

			if (!$form.find('input[name="password"]').val()) {
				alert('비밀번호를 입력해주세요.')
				return;
			}

			if (seq > 0) {
				$form.find('input[name="articleSeq"]').val(seq);
			}

			$.ajax({
				cache: false,
				type: "post",
				url: "/egf/bp/board/article/passconfirm",
				data: $form.serialize(),
				dataType: "json",
				success: function (data, textStatus, jqXHR) {
					seq = data.articleSeq;
					if (data.result == 'success') {
						if (userMode == 'edit') {
							$form.attr('action', '/portal/participation/job/recruit?mode=edit').submit();
						}
						else if (userMode == 'delete') {
							if (confirm("정말 지우겠습니까?")) {
								$form.attr('action', '/egf/bp/board/article/actionDelete').submit();
							}
						}
						else if (userMode == 'read') {
							$form.find('input[name="articleSeq"]').remove();
							$form.attr('action', '/portal/participation/job/recruit?articleSeq=' + seq).submit();
						}
					}
					else {
						alert(data.msg);
					}
				},
				error: function (jqXHR, textStatus, errorThrown) {
				}
			});
		}

		$(function () {
			$('.passFormEnterPress').on('keypress', function (e) {
				var charCode = (e.which) ? e.which : e.keyCode;
				if (charCode == 13) {
					confirmFormCheck();
					return false;
				}
			});
		});
	</script>

<!-- 검색 기능 변수명은 응용해서 -->
<script>
	function search() {
		var searchInput = document.getElementById("search-input").value;
		var searchType = document.getElementById("search-type").value;

		// 검색 동작을 수행하는 코드를 작성합니다.
		// 예시: 검색어와 검색 타입을 서버로 전송하고 결과를 받아옵니다.
		// 이후 결과를 처리하는 로직을 추가하세요.
	}
</script>

</body>

</html>