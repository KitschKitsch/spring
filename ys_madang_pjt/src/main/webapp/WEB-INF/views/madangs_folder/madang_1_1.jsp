<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

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
								<li>특정 개인 및 단체에 대한 비난, 상업성 광고, 허위사실 유포, 동일 또는 유사한 내용의 반복적 게시 등 법령을 위반하거나 홈페이지의 정상적인 운영에 지장을 초래하는 경우는 운영규칙에 의거하여 삭제될 수 있습니다.</li>
								<li>또한, 개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기 바랍니다.</li>
							</p>
						</div>
	
	<div class="col-md-9 contents">
	<div class="block text-center">
		<form name="dataForm" id="dataForm" method="get" action="BD_selectBbsList.do" class="form-inline">
			<fieldset>
				<legend class="sr-only">목록검색조건</legend>
				<input type="hidden" name="q_bbsCode" id="q_bbsCode" value="1013">
				<input type="hidden" name="q_bbscttSn" id="q_bbscttSn" value="">
				<input type="hidden" name="q_tab" id="q_tab" value="">

				<div class="block search-condition">
					<div class="form-group">
						
						<label for="q_searchKeyTy" class="sr-only">항목</label>
						<select name="q_searchKeyTy" id="q_searchKeyTy" class="select" style="width: 150px;">
							<option value="">-- 검색선택 --</option>
								<option value="sj___1002">
											제목
								</option>
								<option value="lngtCn___1002">
											내용
								</option>
								<option value="registerNm___1001">
											등록자명
								</option>
						</select>
					</div>
					<div class="form-group">
						<label for="q_searchVal" class="sr-only">검색어</label>
						<input type="text" name="q_searchVal" id="q_searchVal" value="" class="form-control" placeholder="검색어를 입력하세요.">
					</div>
					<button type="submit" class="btn btn-info btn-search">검색</button>
					<button type="button" class="btn btn-info" onclick="opSearchReset();">초기화</button>
				</div>
                    <div class="row grid-list-top">
                        <div class="col-xs-12">
                                    <fieldset>
                                        <legend class="sr-only">페이지당 목록갯수 선택</legend>
                                        <div class="pull-left">
												<span>총 게시물 <strong>18699</strong>건</span>
												 <span>현재 페이지 <strong>1/1870</strong></span>
                                        </div>
											<div class="pull-right">
                                            <label for="q_rowPerPage">페이지당 목록</label>
                                            <select name="q_rowPerPage" id="q_rowPerPage" class="form-control">
                                                    <option value="10" selected="selected">10</option>
                                                    <option value="12">12</option>
                                                    <option value="15">15</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                            </select>
                                            <button type="submit" class="btn btn-primary " data-loading-text="<i class='icon-spinner7 spin'></i>">변경</button>
                                        </div>
                                    </fieldset>
                            <input type="hidden" name="q_currPage" id="q_currPage" value="1">
                            <input type="hidden" name="q_sortName" id="q_sortName" value="">
                            <input type="hidden" name="q_sortOrder" id="q_sortOrder" value="">
                        </div>
                    </div>
			</fieldset>
		</form>
	</div>
	<div class="block table-responsive grid-list for-mobile">
		<!-- 리스트 -->
		<table class="table table-bordered table-striped table-hover">
			<colgroup>
				<col class="show-col" width="80px;">
				<col class="subject" width="">
				<col width="10%;">
				<col width="10%;">
				<col width="10%;">
			</colgroup>
			<thead>
				<tr>
					<th class="show-col">순번</th>
					<th class="subject">제목</th>
					<th>등록자명</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${list}">
					<tr>
					<td class="show-col text-center">${board.board_no}</td>
							<td class="subject">
								<a href="/madangs_folder/madang_1_2?bno=${board.board_no}">${board.board_title}</a> <img class="bbsNewImage" src="/resources/openworks4/theme/default/images/bbs/ico_new.gif" alt="New"> 
							</td>
						
						<td>${board.auth_nickname}</td>
						<td>${board.board_created}</td>
						<td>${board.board_view}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- //리스트 -->
	</div>

	<!-- 버튼 -->
	<div class="row block btn-group-wrap">
		<div class="col-sm-12 btn-group">
			<div class="pull-right">
				<a href="/login/vnameLogin.do?q_bbsCode=1013" class="btnType02 btn btn-info">
					<span>글쓰기</span>
				</a>
			</div>
		</div>
	</div>
	<!-- //버튼 -->

	<!-- 페이징 -->
    <div class="block text-center">
            <ul class="pagination">
                                <li class="active">
                                    <a href="#" title="현재 1 페이지" onclick="return false;">1</a>
                                </li>
                                <li><a href="#" onclick="opMovePage(2); return false;" title="2 페이지">2</a></li>
                                <li><a href="#" onclick="opMovePage(3); return false;" title="3 페이지">3</a></li>
                                <li><a href="#" onclick="opMovePage(4); return false;" title="4 페이지">4</a></li>
                                <li><a href="#" onclick="opMovePage(5); return false;" title="5 페이지">5</a></li>
                                <li><a href="#" onclick="opMovePage(6); return false;" title="6 페이지">6</a></li>
                                <li><a href="#" onclick="opMovePage(7); return false;" title="7 페이지">7</a></li>
                                <li><a href="#" onclick="opMovePage(8); return false;" title="8 페이지">8</a></li>
                                <li><a href="#" onclick="opMovePage(9); return false;" title="9 페이지">9</a></li>
                                <li><a href="#" onclick="opMovePage(10); return false;" title="10 페이지">10</a></li>
                            <li class="next"><a href="#" onclick="opMovePage(11); return false;" title="다음페이지그룹 가기">다음페이지<i class="entypo-right-open"></i></a></li>
                            <li class="next last"><a href="#" onclick="opMovePage(1870); return false;" title="마지막페이지로 가기">마지막페이지</a></li>
            </ul>
    </div>

<!--             <div class="row"> -->
<!-- 	            <div class="col-sm-12 movePage"> -->
<!-- 		            <div class="pull-right form-inline"> -->
<!-- 		                <div class="form-group"> -->
<!-- 		                	<label class="sr-only" for="txtMovePage">페이지이동</label> -->
<!-- 		                	<input type="text" value="" id="txtMovePage" name="txtMovePage" class="form-inline" title="이동할 페이지를 입력하세요" /> -->
<!-- 		                </div> -->

<!-- 		            </div> -->
<!-- 	            </div> -->
<!--             </div> -->
	<!-- //페이징 -->
<script type="text/javascript" src="/resources/libs/form-3.51.0/jquery.form.js"></script>
				</div>
	</div>
	</div>
	<!--====게시판====-->
	</div>
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