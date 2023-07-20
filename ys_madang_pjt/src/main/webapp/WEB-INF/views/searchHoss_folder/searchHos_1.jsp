<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
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
<link rel="stylesheet" href="../css/style_ys_map.css">
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

	<!--================Contact Area =================-->
	<section class="contact_area p_120">





		<div id="info.body" class="body" style="height: 736px;">
			<div id="info.main" class="Main INFOLEFT">
				<div id="info.main.home" class="home HIDDEN">
					<div id="info.location" class="theme HIDDEN">
						<div class="reportError">
							<h3 class="screen_out">현재위치</h3>
							<a id="info.location.reportError" href="iptargeting/form"
								class="reportbug">오류신고</a>
						</div>
					</div>
					<div id="info.main.around" class="infoAround">
						<h3 class="tit_around">주변 탐색</h3>
						<ul class="list_around">
							<li><button type="button" class="btn_around">
									<span class="ico_food"></span><span class="txt_around">음식점</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_cafe"></span><span class="txt_around">카페</span>
								</button></li>
							<li><button type="button" class="btn_around">
									<span class="ico_bus"></span><span class="txt_around">버스</span>
								</button></li>
						</ul>
					</div>
					<div id="info.main.newplace" class="newplace">
						<div class="newPlace">
							<h6 class="tit_newplace">새로운 장소</h6>
							<p class="desc_newplace">
								새로운 수정된 장소를 알고 계세요?<br>장소 제안은 지도 품질 향상에 큰 도움이 됩니다.
							</p>
							<a href="#none" class="xc link_newplace link_suggest"
								data-pos="left" data-channel="SEARCH_MIDDLE_NEWPLACE">신규 장소
								등록</a>
						</div>
					</div>
				</div>

				<div id="info.main.header" class="mainHeader">
					<ul id="info.main.options" class="sub">
						<li class="option0 option0-ACTIVE"><a href="#">전체</a></li>
						<li class="option1"><a href="#">장소</a></li>
						<li class="option2"><a href="#">주소</a></li>
						<li class="option3"><a href="#">버스</a></li>
						<li class="option4"><a href="#">정류장</a></li>
					</ul>
					<a href="#none" id="info.main.header.clear" class="clear"
						title="모두 지우기">모두 지우기</a>
					<div id="info.main.header.activeOption" class="screen_out">전체</div>
				</div>

				<div id="info.related.keyword" class="relatedKeyword HIDDEN">
					<span class="ico">관련검색어</span>
					<div class="frameKeywords">
						<p class="wrapKeywords"></p>
					</div>
					<div class="more closed">
						<a href="#">더보기</a><span class="ico"></span>
					</div>
					<div class="more opened HIDDEN">
						<a href="#">접기</a><span class="ico"></span>
					</div>
				</div>
				<div id="info.searchHeader" class="searchHeader">
					<div id="info.search.boundsTitle" class="HIDDEN">
						<p class="desc_search">
							현재 지도 내 <em id="info.search.boundsTitle.text"></em> 검색결과
						</p>
					</div>
					<div id="info.search.correction" class="correction HIDDEN">
						<div class="correctionTop">
							<p class="desc_search">
								<em id="info.search.correction.orig"></em>에서 <em
									id="info.search.correction.new"></em>으로 검색한 결과
							</p>
						</div>
						<p class="correctionBottom">
							<a href="#" id="info.search.correction.goorig"
								class="link_search">입력한 '<span
								id="info.search.correction.orig2"></span>'(으)로 재검색 <span
								class="ico_arr"></span></a>
						</p>
						<p id="info.search.correction.error" class="desc_error HIDDEN"></p>
						<p></p>
					</div>
					<div id="info.searchHeader.message" class="message">
						<div class="MessageView">
							<div data-id="upper" class="line">
								<div data-id="upperwrap">
									<strong class="screen_out HIDDEN"> 선택상자</strong> <em
										class="screen_out HIDDEN">선택내용 :</em> <a href="#none"
										data-id="upperlabel" class="label HIDDEN"></a> <em
										class="screen_out HIDDEN">선택옵션</em>
								</div>
								<p data-id="uppertext" class="desc_search">
									장소명 <em>케밥</em> 검색결과
								</p>
							</div>
							<div data-id="lower" class="line lower HIDDEN">
								<div data-id="lowerwrap">
									<a data-id="lowerlabel" class="label HIDDEN"></a>
								</div>
								<a href="#none" data-id="lowertext" class="link_search"></a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div id="info.searchHeader.banner" class="HIDDEN">
						<a href="#" class="banner"></a>
					</div>
					<div id="info.searchHeader.postCodeMessage"
						class="postCodeMessage HIDDEN">
						<a href="#none" class="link_search">우편번호 검색<span
							class="ico_arr"></span></a>
					</div>
					<div id="info.searchHeader.spellcheck" class="spellcheck HIDDEN">
						<div id="info.searchHeader.spellcheck.titleresult"
							class="desc_search HIDDEN">
							<em id="info.searchHeader.spellcheck.title"></em> 검색결과
						</div>
						<p>
							<a href="#" class="link_search"
								id="info.searchHeader.spellcheck.candidate">'<span
								id="info.searchHeader.spellcheck.text"></span>'(으)로 재검색 <span
								class="ico_arr"></span></a>
						</p>
					</div>
				</div>
				<div id="info.noPlace" class="noPlace HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">
							<em id="info.noPlace.keyword" class="txt_keyword"></em> 검색 결과가
							없어요.
						</h3>
						<p class="noResultDesc">
							검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해 보세요.
						</p>
						<a href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q="
							class="noKeywordLink" id="info.noPlace.daum.link" target="_blank">Daum
							검색 결과 보기</a>
						<div id="info.noPlace.register" class="register">
							새로운 수정된 장소를 알고 계세요?<br>장소 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
								id="info.noPlace.register.btn" class="registerBtn" href="#"
								target="_blank">신규 장소 등록</a>
						</div>
					</div>
				</div>
				<div id="info.search.noW3w" class="noPlace noPlace_type2 HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">검색 결과가 없어요.</h3>
					</div>
				</div>



				<div id="info.search" class="keywordSearch">
					<li class="AdItem"><a data-id="ad_wrap"
						href="https://tr.ds.kakao.com/clk?wa=8UcEY2eFMbe_Ccl3-Zq6vg&amp;enc=TY9R6LMVJU8FkN2KPHpQwR5urOzTtoyZd8AdC_nifsW2fnvS1SploxitGdvTFufZ-eVRu7eCb64QcRoaIoEtQ-p7Zn9jayNHvNcunepg5jwG17kUIm-6Z1R1iHIVaCYR9iR065TctXlLCsuZDqUuZwuZuDQ0WXQURkwaEJevbzQgKKat-4LcOdYbKmV9Nfphw74mX0gl3TdrQ_LD0UKzZIE6-uNNmPNnlJi8_YdzugCONxnRTFsaoFu946ZpFojxE4TidVaINaoFLv-6oHzz7FpesnqBdck50Ytjhf6bfvPq8hBsftZbKQJeKVuP83hj3w0UjbECm9ABqb_y3vNQ1_UvmyS6MDZrzmb9zrC76ecUytOE-8sdp_mBVLNKrdN9hmo0eXu2FM3dU2YwY2DqXSByWppXgfb0kr_scEiHklOOyvmvYraNZxqQvd-UgararcuaP6OY3a-mJvanleYRcyX9WjYnzFdqBYjI8T_3vCqDPcd4TVa7b5Wq3DNkyW3SUx201FLxCA-t0oY1O8m_bwoX6nLRrSEWWZSiKLN0ia79ODYWXLOFXQlXUIsHKZR-5FFO7qUip_vH0djQdK3eUWRjCviqbC3xoesmMdIP699rAcCx4N33PocLrYDwRpjt-eaAhzvG3JgoSqDQMw5y_Q&amp;signature=8e13069b1ce8c3c66a1e44f854403560&amp;lc=1"
						class="link_ad" adfit-unit-id="DAN-REdLpoq4d96cKAIY"
						adfit-landing-url="" id="kakao_ad_8XghQP" target="_blank">
							<div class="wrap_thumb">
								<img data-id="image" adfit-profile-img-url=""
									adfit-icon-width="70" adfit-icon-height="70" class="thumb_ad"
									width="70"
									src="https://img1.daumcdn.net/thumb/S300x300/?scode=b2_01&amp;x-twg-thumb-fname=http%3A%2F%2Ft1.daumcdn.net%2Fcmp%2FimageEditor%2FMOMENT%2F510761%2F0ccb39626ffd581208f41d015fea683b&amp;TWGServiceId=b2&amp;Expires=1689868800&amp;Signature=E3XbANkDzkcXIOS0DrLSfzSutGA%3D"
									alt="광고 한샘몰 썸머세일"> <span class="frame_thumb"></span>
							</div>
							<div class="info_ad">
								<strong data-id="title" class="tit_ad"><span
									adfit-profile-name=""
									style="pointer-events: auto; cursor: pointer;">한샘몰</span><span
									class="ico_ad" adfit-ad-info="">AD</span></strong>
								<p data-id="description" class="desc_ad" adfit-title=""
									style="pointer-events: auto; cursor: pointer;">[최대 81%] 한샘몰
									썸머세일</p>
							</div>
					</a></li>



					<div id="info.search.theme" class="section themeSearch HIDDEN">
						<div class="sectiontitle">
							<h5 class="themetit">테마</h5>
							<span class="cntwrap"><em class="cnt"
								id="info.search.theme.cnt"></em></span>
						</div>
						<ul id="info.search.themeList" class="themeList"></ul>
					</div>

					<div id="info.search.buses" class="section buses HIDDEN">
						<div class="sectiontitle sectionBus">
							<h5 class="busestit">버스번호</h5>
							<span class="cntwrap"><em id="info.search.buses.cnt"
								class="cnt"></em></span> <span id="info.search.buses.busstop"
								class="busstop HIDDEN"> 버스 정류장<em
								id="info.search.buses.busstop.cnt" class="cnt"></em>
							</span>
							<div id="info.search.buses.regions" class="regionsbox"></div>
						</div>
						<ul id="info.search.buses.list"></ul>
						<a id="info.search.buses.more" class="more" href="#">버스 더보기</a>
					</div>

					<div id="info.search.busstops" class="section busstops HIDDEN">
						<div class="sectiontitle sectionBus">
							<h3 class="busstoptitle">버스 정류장</h3>
							<span class="cntwrap"><em id="info.search.busstops.cnt"
								class="cnt"></em></span>
							<div id="info.search.busstops.regions" class="regionsbox">
								<span class="bar_area"></span>
							</div>
						</div>
						<ul id="info.search.busstops.list"></ul>
						<a id="info.search.busstops.more" class="more" href="#">버스 정류장
							더보기<span class="ico_road_arrow"></span>
						</a>
					</div>



					<div id="info.search.address" class="section addresses HIDDEN">


						<div class="sectiontitle">
							<h3 class="addrtitle">주소</h3>
							<span class="cntwrap"><em id="info.search.address.cnt"
								class="cnt">0</em></span>
						</div>
						<div id="info.search.address.retry" class="retry HIDDEN">
							<div class="content">
								<span class="ico"></span> <span class="txt">찾으시는 주소가 없어
									유사한 주소를 제공합니다.</span>
							</div>
						</div>
						<ul id="info.search.address.list"></ul>
						<a id="info.search.address.more" class="more" href="#">주소 더보기<span
							class="ico_road_arrow"></span></a>
					</div>
					<div id="info.search.place" class="section places lst">
						<div class="sectiontitle">
							<h5 class="placetit">장소</h5>
							<span class="cntwrap"><em id="info.search.place.cnt"
								class="cnt">234</em></span>
							<ol id="info.search.place.sort" class="Sort">
								<li class="first"><a href="#none" class="label ACTIVE">정확도순</a></li>
								<li><a href="#none" class="label">인기도순</a></li>
							</ol>
						</div>
						<div id="info.search.place.breadcrumb" class="breadcrumb HIDDEN"></div>
						<ul id="info.search.place.list" class="placelist">
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">기버</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">A</a> <a
										href="#none" data-id="name" class="link_name" title="기버">기버</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">샌드위치</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="3.0점">3.0</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 40.8px;"></span>
									</span> <a href="https://place.map.kakao.com/254643369#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">1건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/254643369#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">2</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 남동구 구월로 121 낙원상가 307호">인천
											남동구 구월로 121 낙원상가 307호</p>
										<p data-id="otherAddr" class="lot_number" title="간석동 482-3">(지번)
											간석동 482-3</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">금일영업마감</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/254643369?openhour=1"
												target="_blank">영업시간 매일 11:00 ~ 22:00 · 휴게시간 매일 15:00 ~
												16:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone">070-7779-5388</span><span
											class="ICON-middot"></span> <a
											href="https://place.map.kakao.com/254643369"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">알라딘
										케밥&amp;커리</span> <a href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">B</a> <a
										href="#none" data-id="name" class="link_name"
										title="알라딘 케밥&amp;커리">알라딘 <strong>케밥</strong>&amp;커리
									</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">인도음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="4.8점">4.8</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 65.28px;"></span>
									</span> <a href="https://place.map.kakao.com/1446921353#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">44건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/1446921353#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">13</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="경기 부천시 부일로459번길 20 센텀시티 106호">경기
											부천시 부일로459번길 20 센텀시티 106호</p>
										<p data-id="otherAddr" class="lot_number" title="심곡동 179-3">(지번)
											심곡동 179-3</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">금일영업마감</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/1446921353?openhour=1"
												target="_blank">영업시간 월,수,목,금,토,일 12:00 ~ 20:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/1446921353"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">기버케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">C</a> <a
										href="#none" data-id="name" class="link_name" title="기버케밥">기버<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num num0" title="0.0점">0.0</em> <span
										class="backgroundStar"> <span data-id="star"
											class="star" style="width: 0px;"></span>
									</span> <a href="https://place.map.kakao.com/1908505887#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">0건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/1908505887#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">1</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="경기 시흥시 신천3길 65">경기 시흥시 신천3길 65</p>
										<p data-id="otherAddr" class="lot_number" title="신천동 452-3">(지번)
											신천동 452-3</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone">031-312-2220</span><span
											class="ICON-middot"></span> <a
											href="https://place.map.kakao.com/1908505887"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">케밥하우스</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">D</a> <a
										href="#none" data-id="name" class="link_name" title="케밥하우스"><strong>케밥</strong>하우스</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">양식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="5.0점">5.0</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 68px;"></span>
									</span> <a href="https://place.map.kakao.com/53192207#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">3건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/53192207#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">2</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 함박로 63">인천 연수구 함박로 63</p>
										<p data-id="otherAddr" class="lot_number" title="연수동 513-12">(지번)
											연수동 513-12</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone">010-2358-1214</span><span
											class="ICON-middot"></span> <a
											href="https://place.map.kakao.com/53192207"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">이스트케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">E</a> <a
										href="#none" data-id="name" class="link_name" title="이스트케밥">이스트<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="5.0점">5.0</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 68px;"></span>
									</span> <a href="https://place.map.kakao.com/1510670980#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">3건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/1510670980#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">1</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 함박로 34 1층">인천 연수구 함박로
											34 1층</p>
										<p data-id="otherAddr" class="lot_number" title="연수동 495-4">(지번)
											연수동 495-4</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">영업중</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/1510670980?openhour=1"
												target="_blank">매일 11:00 ~ 02:00 · 휴게시간 매일 12:00 ~ 14:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/1510670980"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">카라반</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">F</a> <a
										href="#none" data-id="name" class="link_name" title="카라반">카라반</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">양식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="3.0점">3.0</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 40.8px;"></span>
									</span> <a href="https://place.map.kakao.com/646835158#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">8건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/646835158#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">1</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 함박로 60-1 1층">인천 연수구 함박로
											60-1 1층</p>
										<p data-id="otherAddr" class="lot_number" title="연수동 512-2">(지번)
											연수동 512-2</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">금일영업마감</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/646835158?openhour=1"
												target="_blank">영업시간 매일 10:00 ~ 22:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone">032-813-8122</span><span
											class="ICON-middot"></span> <a
											href="https://place.map.kakao.com/646835158"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">알라딘케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">G</a> <a
										href="#none" data-id="name" class="link_name" title="알라딘케밥">알라딘<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="3.9점">3.9</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 53.04px;"></span>
									</span> <a href="https://place.map.kakao.com/21354519#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">7건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/21354519#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">3</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 능허대로 187">인천 연수구 능허대로
											187</p>
										<p data-id="otherAddr" class="lot_number" title="옥련동 547-10">(지번)
											옥련동 547-10</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/21354519"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">UZ케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">H</a> <a
										href="#none" data-id="name" class="link_name" title="UZ케밥">UZ<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="4.9점">4.9</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 66.64px;"></span>
									</span> <a href="https://place.map.kakao.com/882157750#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">15건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/882157750#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">2</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 미추홀구 인하로47번길 71">인천 미추홀구
											인하로47번길 71</p>
										<p data-id="otherAddr" class="lot_number" title="용현동 169-12">(지번)
											용현동 169-12</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/882157750"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">더케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">I</a> <a
										href="#none" data-id="name" class="link_name" title="더케밥">더<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="4.2점">4.2</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 57.12px;"></span>
									</span> <a href="https://place.map.kakao.com/697743231#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">5건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/697743231#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">3</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 미추홀구 한나루로477번길 117 1층">인천
											미추홀구 한나루로477번길 117 1층</p>
										<p data-id="otherAddr" class="lot_number" title="용현동 92-4">(지번)
											용현동 92-4</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">금일영업마감</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/697743231?openhour=1"
												target="_blank">영업시간 매일 11:00 ~ 23:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/697743231"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">기버케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">J</a> <a
										href="#none" data-id="name" class="link_name" title="기버케밥">기버<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">양식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num num0" title="0.0점">0.0</em> <span
										class="backgroundStar"> <span data-id="star"
											class="star" style="width: 0px;"></span>
									</span> <a href="https://place.map.kakao.com/762858041#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">0건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/762858041#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">0</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 미추홀구 재넘이길29번길 31">인천 미추홀구
											재넘이길29번길 31</p>
										<p data-id="otherAddr" class="lot_number" title="학익동 307">(지번)
											학익동 307</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/762858041"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">케밥집</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">K</a> <a
										href="#none" data-id="name" class="link_name" title="케밥집"><strong>케밥</strong>집</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">터키음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="2.8점">2.8</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 38.08px;"></span>
									</span> <a href="https://place.map.kakao.com/1927513650#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">4건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/1927513650#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">0</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 미추홀구 인하로77번길 6-30">인천 미추홀구
											인하로77번길 6-30</p>
										<p data-id="otherAddr" class="lot_number" title="용현동 190-13">(지번)
											용현동 190-13</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/1927513650"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">우즈케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">L</a> <a
										href="#none" data-id="name" class="link_name" title="우즈케밥">우즈<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">한식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num num0" title="0.0점">0.0</em> <span
										class="backgroundStar"> <span data-id="star"
											class="star" style="width: 0px;"></span>
									</span> <a href="https://place.map.kakao.com/920044269#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">0건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/920044269#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">0</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 미추홀구 인하로47번길 71">인천 미추홀구
											인하로47번길 71</p>
										<p data-id="otherAddr" class="lot_number" title="용현동 169-12">(지번)
											용현동 169-12</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/920044269"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">안스케밥</span> <a
										href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">M</a> <a
										href="#none" data-id="name" class="link_name" title="안스케밥">안스<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">멕시칸,브라질</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num num0" title="0.0점">0.0</em> <span
										class="backgroundStar"> <span data-id="star"
											class="star" style="width: 0px;"></span>
									</span> <a href="https://place.map.kakao.com/1119222637#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">0건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/1119222637#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">0</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 먼우금로 218 연수푸르지오3단지 C-108호">인천
											연수구 먼우금로 218 연수푸르지오3단지 C-108호</p>
										<p data-id="otherAddr" class="lot_number" title="연수동 596">(지번)
											연수동 596</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/1119222637"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">아라베스크
										송도점</span> <a href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">N</a> <a
										href="#none" data-id="name" class="link_name"
										title="아라베스크 송도점">아라베스크 송도점</a>
									</strong> <span data-id="subcategory" class="subcategory clickable">인도음식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num" title="3.3점">3.3</em> <span class="backgroundStar">
											<span data-id="star" class="star" style="width: 44.88px;"></span>
									</span> <a href="https://place.map.kakao.com/20621475#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">22건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/20621475#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">30</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 연수구 능허대로267번길 30">인천 연수구
											능허대로267번길 30</p>
										<p data-id="otherAddr" class="lot_number" title="동춘동 813-7">(지번)
											동춘동 813-7</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour">
										<p data-id="periodWarp" class="periodWarp">
											<span data-id="periodStatus" class="openhourTitle">금일영업마감</span>
											<a data-id="periodTxt"
												href="https://place.map.kakao.com/20621475?openhour=1"
												target="_blank">영업시간 매일 11:00 ~ 22:00</a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone">032-859-6900</span><span
											class="ICON-middot"></span> <a
											href="https://place.map.kakao.com/20621475"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<span class="ICON-middot"></span><a
											href="http://arabesque.modoo.at" data-id="homepage"
											class="homepage" target="_blank">홈페이지</a> <a href="#none"
											data-id="storeview" class="storeview HIDDEN">스토어뷰</a> <a
											href="#none" data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
							<li class="PlaceItem clickArea">
								<div data-id="btnsWrap" class="utile_item">
									<span data-id="screenOutName" class="screen_out">알카이리케밥</span>
									<a href="#none" data-id="fav" class="fav"> <span
										class="ico_fav">즐겨찾기</span><span class="num"></span>
									</a> <a href="#none" data-id="roadview" class="roadview">로드뷰</a>
									<button data-id="routeBtn" type="button"
										class="DirectionItemInfoBtn">길찾기</button>
									<div class="FlagItemInfoLayer HIDDEN">
										<div data-id="origin" class="origin">출발</div>
										<div data-id="via" class="via">경유</div>
										<div data-id="dest" class="dest">도착</div>
									</div>
								</div>
								<div class="thumb_item HIDDEN">
									<img data-id="image" src="" width="70" height="70"
										class="thumb_g HIDDEN" alt="">
								</div>
								<div class="head_item clickArea">
									<strong class="tit_name"> <a href="#none"
										data-id="icon" class="link_order clickArea">O</a> <a
										href="#none" data-id="name" class="link_name" title="알카이리케밥">알카이리<strong>케밥</strong></a>
									</strong> <span data-id="subcategory" class="subcategory clickable">양식</span>
								</div>
								<div data-id="rating" class="rating clickArea">
									<span data-id="score" class="score"> <span
										class="screen_out">별점</span> <em data-id="scoreNum"
										class="num num0" title="0.0점">0.0</em> <span
										class="backgroundStar"> <span data-id="star"
											class="star" style="width: 0px;"></span>
									</span> <a href="https://place.map.kakao.com/29295670#comment"
										data-id="numberofscore" class="numberofscore" target="_blank">0건</a>
									</span> <span data-id="scoreBlind" class="txt_blind HIDDEN"><span
										class="ico_noti"></span>후기 미제공</span> <span data-id="scoreGroove"
										class="groove"></span> <a
										href="https://place.map.kakao.com/29295670#review"
										data-id="review" class="review" target="_blank">리뷰 <em
										data-id="numberofreview">0</em></a> <span data-id="tvshowInfo"
										class="tvinfolabel HIDDEN">tv소개</span>
								</div>
								<div class="info_item">
									<div data-id="wrapCourseInfo" class="wrapCourseInfo HIDDEN"></div>
									<div data-id="wrapAddress" class="addr">
										<p data-id="address" title="인천 서구 건지로249번길 38-1">인천 서구
											건지로249번길 38-1</p>
										<p data-id="otherAddr" class="lot_number" title="석남동 585-9">(지번)
											석남동 585-9</p>
									</div>
									<p data-id="gasinfo" class="gasinfo HIDDEN"></p>
									<p data-id="realEstates" class="realEstates HIDDEN"></p>
									<div data-id="openhour" class="openhour HIDDEN">
										<p data-id="periodWarp" class="periodWarp HIDDEN">
											<span data-id="periodStatus" class="openhourTitle"></span> <a
												data-id="periodTxt" href="#" target="_blank"></a>
										</p>
									</div>
									<div class="contact clickArea">
										<span data-id="phone" class="phone HIDDEN"></span> <a
											href="https://place.map.kakao.com/29295670"
											data-id="moreview" class="moreview" target="_blank">상세보기</a>
										<a href="#none" data-id="homepage" class="homepage HIDDEN"
											target="_blank">홈페이지</a> <a href="#none" data-id="storeview"
											class="storeview HIDDEN">스토어뷰</a> <a href="#none"
											data-id="intercity" class="intercity HIDDEN">실시간예매</a>
									</div>
								</div>
							</li>
						</ul>
						<a id="info.search.place.more" class="more" href="#">장소 더보기</a>
					</div>
					<div id="info.search.page" class="pages HIDDEN">
						<div class="pageWrap">
							<button type="button" id="info.search.page.prev"
								class="prev disabled">이전</button>
							<a id="info.search.page.no1" class="ACTIVE" href="#">1</a> <a
								id="info.search.page.no2" class="INACTIVE HIDDEN" href="#">2</a>
							<a id="info.search.page.no3" class="INACTIVE HIDDEN" href="#">3</a>
							<a id="info.search.page.no4" class="INACTIVE HIDDEN" href="#">4</a>
							<a id="info.search.page.no5" class="INACTIVE HIDDEN" href="#">5</a>
							<button type="button" id="info.search.page.next"
								class="next disabled">다음</button>
						</div>
					</div>

				</div>

				<div id="info.addNewPlace" class="info_addplace HIDDEN">
					<strong class="tit_addplace">새로운 수정된 장소를 알고 계세요?<br>장소
						제안은 지도 품질 향상에 큰 도움이 됩니다.
					</strong> <a id="info.addNewPlace.btn" href="#"
						class="ico_place link_addplace">신규 장소 등록</a>
				</div>

				<div id="info.noSuchPlace" class="noPlace noSuchPlace HIDDEN">
					<p>
						<strong>'해당위치'</strong>에 대한 검색 결과가 없습니다.
					</p>
				</div>

				<div id="info.noPlaceInBounds" class="noPlace noInBounds HIDDEN">
					<div class="inner_noPlace">
						<h3 class="noKeyword">
							<em id="info.noPlaceInBounds.keyword" class="txt_keyword"></em>
							검색 결과가 없어요.
						</h3>
						<p class="noResultDesc">
							검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해 보세요.
						</p>
						<a href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q="
							class="noKeywordLink" id="info.noPlaceInBounds.daum.link"
							target="_blank">Daum 검색 결과 보기</a>
						<div id="info.noPlaceInBounds.register" class="register">
							새로운 수정된 장소를 알고 계세요?<br>장소 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
								id="info.noPlaceInBounds.register.btn" class="registerBtn"
								href="#" target="_blank">신규 장소 등록</a>
						</div>
					</div>
				</div>

				<div id="info.noThemePlace" class="noThemePlace HIDDEN">
					<p id="info.noThemePlace.category" class="reviewcategories HIDDEN">
						<a id="info.noThemePlace.category.n1" href="#">전체</a> <a
							id="info.noThemePlace.category.n2" href="#">음식</a> <a
							id="info.noThemePlace.category.n3" href="#">여행</a> <a
							id="info.noThemePlace.category.n4" href="#">기타</a>
					</p>
					<p class="l1">
						<strong>'주변 <span id="info.noThemePlace.title"></span>'
						</strong>에 대한 검색 결과가 없습니다.
					</p>
					<p class="l2">지도를 축소하여 다시 테마 지도를 이용해 주세요.</p>
				</div>



			</div>
			<div id="info.route" class="RouteSearch HIDDEN">

				<h2 class="screen_out">길찾기 검색</h2>
				<div id="info.route.searchBox"
					class="RouteSearchBox HIDDEN WHITEOUT">
					<div id="info.route.searchBox.list">
						<div class="WaypointBoxView origin" sortid="0"
							style="left: 0px; top: 0px; position: relative;">
							<div class="dragArea">
								<span class="title origin"></span>
							</div>
							<div class="waypointWindow">
								<input class="valueBox" readonly="" placeholder="출발지를 입력하세요">
								<form class="WaypointInput HIDDEN">
									<input id="info.route.waypointSuggest.input0" title="검색어 입력"
										class="input" type="text" autocomplete="off"><input
										class="submit" type="submit" value="">
									<blockquote id="info.route.waypointSuggest.input0Suggest"
										class="inputSuggest">
										<div class="suggestBox box_sub">
											<div class="baseBox bg">
												<div class="list">
													<ul class="suggest_list_target"></ul>
												</div>
											</div>
											<div class="favorite_find HIDDEN"></div>
											<div class="search_recent recent_none">
												<em class="tit_recent">히스토리가 없어요.</em>
												<ul data-id="wrap" class="list_recent"></ul>
												<div class="favorite_recent">
													<button data-id="disabled" type="button"
														class="btn_recentoff">히스토리 끄기</button>
													<button data-id="clear" type="button"
														class="btn_deleteall HIDDEN">전체삭제</button>
												</div>
											</div>
										</div>
									</blockquote>
								</form>
							</div>
						</div>
						<div class="WaypointBoxView dest" sortid="1"
							style="left: 0px; top: 0px; position: relative;">
							<div class="dragArea">
								<span class="title dest"></span>
							</div>
							<div class="waypointWindow">
								<input class="valueBox" readonly="" placeholder="도착지를 입력하세요">
								<form class="WaypointInput HIDDEN">
									<input id="info.route.waypointSuggest.input1" title="검색어 입력"
										class="input" type="text" autocomplete="off"><input
										class="submit" type="submit" value="">
									<blockquote id="info.route.waypointSuggest.input1Suggest"
										class="inputSuggest">
										<div class="suggestBox box_sub">
											<div class="baseBox bg">
												<div class="list">
													<ul class="suggest_list_target"></ul>
												</div>
											</div>
											<div class="favorite_find HIDDEN"></div>
											<div class="search_recent recent_none">
												<em class="tit_recent">히스토리가 없어요.</em>
												<ul data-id="wrap" class="list_recent"></ul>
												<div class="favorite_recent">
													<button data-id="disabled" type="button"
														class="btn_recentoff">히스토리 끄기</button>
													<button data-id="clear" type="button"
														class="btn_deleteall HIDDEN">전체삭제</button>
												</div>
											</div>
										</div>
									</blockquote>
								</form>
							</div>
						</div>
					</div>
					<a href="#none" id="info.route.searchBox.toggleVia"
						class="btn_roadsearch toggleVia">경유지 추가</a> <a href="#none"
						id="info.route.searchBox.change"
						class="btn_roadsearch routechange" title="출발/도착 순서 바꾸기">출발/도착
						순서 바꾸기</a> <a href="#none" id="info.route.searchBox.clearVia"
						class="btn_roadsearch clearVia" title="모두 지우기">모두 지우기</a>
				</div>

				<div id="info.flagsearch.method" class="routeMethod">
					<div class="RouteMethodTabView">
						<a id="cartab" data-id="car" class="car" href="#"></a> <a
							id="transittab" data-id="transit" class="transit" href="#"></a> <a
							id="walktab" data-id="walk" class="walk" href="#"></a> <a
							id="biketab" data-id="bike" class="bike" href="#"></a>
					</div>
				</div>


				<div id="info.route.home" class="routeHistory routedesc"></div>
				<div id="info.route.intro" class="Howto">
					<strong class="tit_intro">오늘은<br>어디로 안내할까요?
					</strong>
					<p class="desc_intro">
						매일매일 업데이트되는 최신정보로<br>가장 빠른 경로를 알려드려요.
					</p>
				</div>

				<div id="info.flagsearch" class="HIDDEN Flagsearch"
					style="min-height: 736px;">
					<div class="search">
						<div id="info.flagsearch.divided" class="flagDivided">
							<div id="info.flagsearch.correction" class="correction HIDDEN">
								<p class="correctionTop">
									'<strong id="info.flagsearch.correction.orig"></strong>'에서 '<strong
										id="info.flagsearch.correction.new"></strong>'으로 검색한 결과
								</p>
								<p class="correctionBottom">
									<a href="#" id="info.flagsearch.correction.goorig">입력한 '<span
										id="info.flagsearch.correction.orig2"></span>'(으)로 재검색 ‣
									</a>
								</p>
							</div>

							<div id="info.flagsearch.spellcheck" class="spellcheck HIDDEN">
								<div class="spellcheckTitle HIDDEN"
									id="info.flagsearch.spellcheck.titleText">
									'<strong id="info.flagsearch.spellcheck.title"></strong>' 검색결과
								</div>
								<p>
									<a href="#" class="candidate"
										id="info.flagsearch.spellcheck.candidate">'<span
										id="info.flagsearch.spellcheck.text"></span>'(으)로 검색하시겠습니까?
									</a>
								</p>
							</div>

							<div id="info.flagsearch.message" class="message"></div>

						</div>
						<div id="info.flagsearch.options" class="filterwrap">
							<div class="filter" data-mypage="true">
								<a href="#" class="ACTIVE" id="info.flagsearch.filter.all">전체</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.place">장소</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.address">주소</a>
								<a href="#" class="INACTIVE" id="info.flagsearch.filter.busstop">버스</a>
							</div>
						</div>
						<div id="info.flagsearch.address" class="section addresses">
							<div class="sectiontitle">
								<h3 class="addrtitle">주소</h3>
								<span class="cntwrap"><em
									id="info.flagsearch.address.cnt" class="cnt"></em></span>
							</div>
							<ul id="info.flagsearch.address.list"></ul>
							<a id="info.flagsearch.address.more" class="more" href="#">주소
								더보기<span class="ico_road_arrow"></span>
							</a>
						</div>

						<div id="info.flagsearch.place" class="section places">
							<h5 class="sectiontitle">
								<span class="placetitle">장소</span> <span class="cntwrap"><em
									id="info.flagsearch.place.cnt" class="cnt"></em></span>
							</h5>
							<ul id="info.flagsearch.place.list"></ul>
							<a id="info.flagsearch.place.more" class="more" href="#">장소
								더보기</a>
						</div>

						<div id="info.flagsearch.busstop"
							class="section busstopList HIDDEN">
							<div class="sectiontitle">
								<h3 class="busstoptitle">버스정류장</h3>
								<span class="cntwrap"><em
									id="info.flagsearch.busstop.cnt" class="cnt"></em></span>
							</div>
							<ul id="info.flagsearch.busstop.list"></ul>
							<a id="info.flagsearch.busstop.more" class="more" href="#">버스정류장
								더보기<span class="ico_road_arrow"></span>
							</a>
						</div>

						<div id="info.flagsearch.page" class="pages HIDDEN">
							<div class="pageWrap">
								<button type="button" id="info.flagsearch.page.prev"
									class="prev disabled">이전</button>
								<a id="info.flagsearch.page.no1" class="INACTIVE" href="#">1</a>
								<a id="info.flagsearch.page.no2" class="INACTIVE" href="#">2</a>
								<a id="info.flagsearch.page.no3" class="INACTIVE" href="#">3</a>
								<a id="info.flagsearch.page.no4" class="INACTIVE" href="#">4</a>
								<a id="info.flagsearch.page.no5" class="INACTIVE" href="#">5</a>
								<button type="button" id="info.flagsearch.page.next"
									class="next">다음</button>
							</div>
						</div>

						<div id="info.noFlagPlace" class="noPlace HIDDEN">
							<div class="inner_noPlace">
								<h3 class="noKeyword">
									<em id="info.noFlagPlace.keyword" class="txt_keyword"></em> 검색
									결과가 없어요.
								</h3>
								<p class="noResultDesc">
									검색어의 철자가 정확한지 다시 한번 확인해 주세요.<br>장소를 찾을 때 전화번호, 주소도 활용해
									보세요.
								</p>
								<a href="http://search.daum.net/search?w=tot&amp;DA=54X&amp;q="
									class="noKeywordLink" id="info.noPlace.daum.link"
									target="_blank">Daum 검색 결과 보기</a>
								<div id="info.noFlagPlace.register" class="register">
									새로운 수정된 장소를 알고 계세요?<br>장소 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
										id="info.noFlagPlace.register.btn" class="registerBtn"
										href="#" target="_blank">신규 장소 등록</a>
								</div>
							</div>
						</div>
						<div id="info.noW3w" class="noPlace noPlace_type2 ">
							<div class="inner_noPlace">
								<h3 class="noKeyword">w3w를 지원하지 않는 기능이에요.</h3>
							</div>
						</div>

						<div id="info.flagsearch.addNewPlace" class="info_addplace HIDDEN">
							<strong class="tit_addplace">새로운 수정된 장소를 알고 계세요?<br>장소
								제안은 지도 품질 향상에 큰 도움이 됩니다.
							</strong> <a id="info.flagsearch.addNewPlace.btn" href="#"
								class="ico_place link_addplace">신규 장소 등록</a>
						</div>
					</div>

					<div id="info.carRoute" class="HIDDEN"></div>
					<div id="info.walkRoute" class="walkroute HIDDEN">
						<div class="WalkRouteResultView">
							<ul data-id="list" class="list"></ul>
							<div class="notice">
								<span class="first"> 소요시간은 성인 도보기준 4km/h로 환산하여 제공됩니다.</span> <span
									class="second"> 도보 길찾기는 실제 구간과 다를 수 있으니 참고 부탁 드립니다.</span>
							</div>
							<div class="info_top">
								<a href="#none" class="link_top HIDDEN" data-id="goToTop">위로
									가기</a>
							</div>
							<div class="info_fixroute">
								길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
									href="#none" class="link_fixroute" data-id="fixRoute"> 틀린정보
									신고 </a>
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기 검색 결과가 없어요.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"></div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									<div data-id="fiyContent">
										길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
											href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
											신고</a>
									</div>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기에 실패했습니다.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"
										style="display: block;">다시 시도해주세요</div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									<div data-id="fiyContent" class="HIDDEN">
										길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
											href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
											신고</a>
									</div>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
					</div>
					<div id="info.bikeRoute" class="bikeroute HIDDEN">
						<div class="BikeRouteResultView">
							<ul data-id="list" class="list"></ul>
							<div class="notice">
								<span class="first">소요시간은 자전거 평속 20km/h 내외로 환산하여 제공됩니다.</span>
								<!--
		<a href="#" class="second" data-id="openDetail">정보 제공의 한계와 책임</a>

		<div class="notice_detail HIDDEN" data-id="detailBox">
			<h2>정보 제공의 한계와 책임 안내</h2>
			<p>(주)카카오에서 제공하는 자전거 길찾기는 자전거 전용 도로를 우선으로 안내하며, 자전거 전용 도로가 없을 경우에는 자동차 경로 정보(자동차 전용 도로는 제외)로 안내합니다.</p>
			<p>도로 정보가 수집되지 않거나 최신 정보로 갱신되지 않은 일부 지역의 경우 잘못된 경로로 안내될 수 있으니 <strong>본 서비스 정보는 반드시 참고 자료로만 활용하시길 바랍니다. 본 서비스에서 제공한 정보를 이용하여 자전거 주행시 발생하는 사고 등에 대해서 당사는 법적 책임을 지지 않습니다.</strong></p>
			<p>자전거 주행 시 관계 법령을 준수하고 현장 상황에 맞게 안전 운행 하시기 바랍니다.</p>
			<img class="close" data-id="closeDetail" src="//t1.daumcdn.net/localimg/localimages/07/2017/pc/ico_noti_x.png" width="16" height="16" alt="닫기"/>
		</div>
		-->
							</div>
							<div class="info_top">
								<a href="#none" class="link_top HIDDEN" data-id="goToTop">위로
									가기</a>
							</div>
							<div class="info_fixroute">
								길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
									href="#none" class="link_fixroute" data-id="fixRoute"> 틀린정보
									신고 </a>
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기 검색 결과가 없어요.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"></div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									<div data-id="fiyContent">
										길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
											href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
											신고</a>
									</div>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
						<div class="NoRouteView HIDDEN">
							<div class="NoRouteContentView">
								<div class="wrap" data-id="content">
									<h3 class="noKeyword" data-id="titleInfo">길찾기에 실패했습니다.</h3>
									<div class="noRouteDesc" data-id="noRouteDesc"
										style="display: block;">다시 시도해주세요</div>
									<a href="http://kakaomap.tistory.com/210" target="_blank"
										class="link_suggest HIDDEN" data-id="link">도보 길찾기 제공지역 안내</a>
									<div class="intercityBox HIDDEN" data-id="intercityBox"></div>
								</div>
								<div class="info_fixroute">
									<div data-id="fiyContent" class="HIDDEN">
										길찾기 정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다. <a
											href="#" class="ico_place link_fixroute" data-id="fiyBtn">틀린정보
											신고</a>
									</div>
								</div>
								<!-- 2018-12-11_v2 수정 : 텍스트 추가 -->
							</div>
						</div>
					</div>
					<div class="TransitRouteResultView HIDDEN"></div>
					<div class="CarRouteResultView HIDDEN">
						<div class="info_pathfind">
							<!-- 요금설정 선택시 paysetting_on 클래스 추가  -->
							<div class="menu_pathfind" data-id="menu">
								<div data-id="option" class="opt_pathfind">
									<!-- 옵션 선택시 opt_open 클래스 추가 -->
									<div class="screen_out">길찾기 종류 선택상자</div>
									<span class="screen_out">선택내용 : </span> <a href="#"
										data-id="optionText" class="img_pathfind link_selected">최적경로</a>
									<div class="screen_out">선택옵션</div>
									<ul class="list_opt">
										<li><a href="#" data-id="recomm" class="link_option">최적경로</a></li>
										<li><a href="#" data-id="freeway" class="link_option">무료경로</a></li>
										<li><a href="#" data-id="shortest" class="link_option">최단거리</a></li>
										<li><a href="#" data-id="bike" class="link_option">자동차전용제외</a></li>
									</ul>
								</div>
								<div class="inner_pathfind">
									<div data-id="realtime" class="check_live">
										<input type="checkbox" data-id="realCheckBox" id="checkLive"
											class="inp_live"> <label for="checkLive"
											class="lab_live">실시간</label>
									</div>
									<span class="txt_bar" data-id="realtimeBar">|</span> <a
										href="#none" data-id="payset" class="link_payset link_payon">요금설정</a>
								</div>
							</div>
						</div>
						<ul class="list"></ul>
						<p class="daumNotice HIDDEN">
							<span class="notice_icon">아이콘</span><span class="notice_text"></span>
						</p>
						<div class="info_top">
							<a href="#" class="link_top HIDDEN">위로 가기</a>
						</div>
						<div class="info_fixroute">
							<strong class="tit_carsource">경로 정보 제공 : 카카오내비</strong><span>길찾기
								정보가 잘못되었나요?<br>정보 수정 제안은 지도 품질 향상에 큰 도움이 됩니다.
							</span><a href="#" class="link_fixroute"></a>
						</div>
					</div>
				</div>
			</div>

			<div id="info.bus" class="BusSearch WHITEOUT HIDDEN">
				<a href="#none" id="info.bus.removeAll" class="removeAll"
					title="모두 지우기">모두 지우기</a>
				<ul id="search.busMethodtype" class="BusMethodType">
					<li id="search.busMethodtype.number" class="busNum NUMBER-ACTIVE">
						<a href="#none">번호</a>
					</li>
					<li id="search.busMethodtype.stop" class="busStop BUSSTOP-INACTIVE">
						<a href="#none">정류장</a>
					</li>
					<li id="search.busMethodtype.region"
						class="busRegion REGION-INACTIVE"><a href="#none">지역</a></li>
				</ul>

				<div id="info.bus.searchBox.number" class="number">
					<form id="info.bus.searchBoxNumber" class="BusSearchBox WHITEOUT">
						<div class="box_search">
							<h3 class="screen_out">
								<label for="info.route.searchBox.number.name">버스번호</label>
							</h3>
							<input id="info.route.searchBox.number.name" class="q"
								type="text" autocomplete="off" placeholder="버스번호를 입력하세요">
							<button id="info.bus.searchBox.number.submit" class="go"
								type="submit"></button>
							<blockquote id="info.route.searchBox.number.nameSuggest">
								<div class="suggestBox box_sub">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</form>
				</div>
				<div id="info.bus.searchBox.stop" class="stop HIDDEN">
					<form id="info.bus.searchBoxStop" class="BusSearchBox WHITEOUT">
						<div class="box_search">
							<h3 class="screen_out">
								<label for="info.route.searchBox.stop.name">버스정류장</label>
							</h3>
							<input id="info.route.searchBox.stop.name" class="q" type="text"
								autocomplete="off" placeholder="버스정류장을 입력하세요">
							<button id="info.bus.searchBox.stop.submit" class="go"
								type="submit"></button>
							<blockquote id="info.route.searchBox.stop.nameSuggest">
								<div class="suggestBox box_sub">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</form>
				</div>

				<div id="info.bus.region" class="region BusSearchBox HIDDEN">
					<div class="hb">
						<div id="info.bus.region.local.button" class="rb">
							<h3 class="screen_out">지역</h3>
							<span class="screen_out">선택상자</span> <em class="screen_out">선택내용
								:</em> <span id="info.bus.region.local" class="method melt">경기</span>
							<em class="screen_out">선택옵션</em>
							<ul id="search.busLocal" class="BusLocal HIDDEN">
								<li id="search.busLocal.seoul" class="INACTIVE">서울</li>
								<li id="search.busLocal.pusan" class="INACTIVE">부산</li>
								<li id="search.busLocal.daegu" class="INACTIVE">대구</li>
								<li id="search.busLocal.incheon" class="INACTIVE">인천</li>
								<li id="search.busLocal.kwangju" class="INACTIVE">광주</li>
								<li id="search.busLocal.daejeon" class="INACTIVE">대전</li>
								<li id="search.busLocal.ulsan" class="INACTIVE">울산</li>
								<li id="search.busLocal.sejong" class="INACTIVE">세종</li>
								<li id="search.busLocal.kyonggi" class="INACTIVE">경기</li>
								<li id="search.busLocal.kangwon" class="INACTIVE">강원</li>
								<li id="search.busLocal.chungbook" class="INACTIVE">충북</li>
								<li id="search.busLocal.chungnam" class="INACTIVE">충남</li>
								<li id="search.busLocal.jeonbuk" class="INACTIVE">전북</li>
								<li id="search.busLocal.jeonnam" class="INACTIVE">전남</li>
								<li id="search.busLocal.kyungbook" class="INACTIVE">경북</li>
								<li id="search.busLocal.kyungnam" class="INACTIVE">경남</li>
								<li id="search.busLocal.jeju" class="INACTIVE">제주</li>
							</ul>
						</div>
					</div>
					<div class="hb sub">
						<div id="info.bus.region.subLocal.button" class="rb">
							<strong class="screen_out">세부지역 선택상자</strong> <em
								class="screen_out">선택내용 :</em> <span
								id="info.bus.region.subLocal" class="method method-INACTIVE">가평군</span>
							<em class="screen_out">선택옵션</em>
							<ul id="search.seoulLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.11680" class="INACTIVE">강남구</li>
								<li id="search.busLocal.11740" class="INACTIVE">강동구</li>
								<li id="search.busLocal.11305" class="INACTIVE">강북구</li>
								<li id="search.busLocal.11500" class="INACTIVE">강서구</li>
								<li id="search.busLocal.11620" class="INACTIVE">관악구</li>
								<li id="search.busLocal.11215" class="INACTIVE">광진구</li>
								<li id="search.busLocal.11530" class="INACTIVE">구로구</li>
								<li id="search.busLocal.11545" class="INACTIVE">금천구</li>
								<li id="search.busLocal.11350" class="INACTIVE">노원구</li>
								<li id="search.busLocal.11320" class="INACTIVE">도봉구</li>
								<li id="search.busLocal.11230" class="INACTIVE">동대문구</li>
								<li id="search.busLocal.11590" class="INACTIVE">동작구</li>
								<li id="search.busLocal.11440" class="INACTIVE">마포구</li>
								<li id="search.busLocal.11410" class="INACTIVE">서대문구</li>
								<li id="search.busLocal.11650" class="INACTIVE">서초구</li>
								<li id="search.busLocal.11200" class="INACTIVE">성동구</li>
								<li id="search.busLocal.11290" class="INACTIVE">성북구</li>
								<li id="search.busLocal.11710" class="INACTIVE">송파구</li>
								<li id="search.busLocal.11470" class="INACTIVE">양천구</li>
								<li id="search.busLocal.11560" class="INACTIVE">영등포구</li>
								<li id="search.busLocal.11170" class="INACTIVE">용산구</li>
								<li id="search.busLocal.11380" class="INACTIVE">은평구</li>
								<li id="search.busLocal.11110" class="INACTIVE">종로구</li>
								<li id="search.busLocal.11140" class="INACTIVE">중구</li>
								<li id="search.busLocal.11260" class="INACTIVE">중랑구</li>
							</ul>
							<ul id="search.pusanLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.26440" class="INACTIVE">강서구</li>
								<li id="search.busLocal.26410" class="INACTIVE">금정구</li>
								<li id="search.busLocal.26710" class="INACTIVE">기장군</li>
								<li id="search.busLocal.26290" class="INACTIVE">남구</li>
								<li id="search.busLocal.26170" class="INACTIVE">동구</li>
								<li id="search.busLocal.26260" class="INACTIVE">동래구</li>
								<li id="search.busLocal.26230" class="INACTIVE">부산진구</li>
								<li id="search.busLocal.26320" class="INACTIVE">북구</li>
								<li id="search.busLocal.26530" class="INACTIVE">사상구</li>
								<li id="search.busLocal.26380" class="INACTIVE">사하구</li>
								<li id="search.busLocal.26140" class="INACTIVE">서구</li>
								<li id="search.busLocal.26500" class="INACTIVE">수영구</li>
								<li id="search.busLocal.26470" class="INACTIVE">연제구</li>
								<li id="search.busLocal.26200" class="INACTIVE">영도구</li>
								<li id="search.busLocal.26110" class="INACTIVE">중구</li>
								<li id="search.busLocal.26350" class="INACTIVE">해운대구</li>
							</ul>
							<ul id="search.daeguLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.27720" class="INACTIVE">군위군</li>
								<li id="search.busLocal.27200" class="INACTIVE">남구</li>
								<li id="search.busLocal.27290" class="INACTIVE">달서구</li>
								<li id="search.busLocal.27710" class="INACTIVE">달성군</li>
								<li id="search.busLocal.27140" class="INACTIVE">동구</li>
								<li id="search.busLocal.27230" class="INACTIVE">북구</li>
								<li id="search.busLocal.27170" class="INACTIVE">서구</li>
								<li id="search.busLocal.27260" class="INACTIVE">수성구</li>
								<li id="search.busLocal.27110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.incheonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.28710" class="INACTIVE">강화군</li>
								<li id="search.busLocal.28245" class="INACTIVE">계양구</li>
								<li id="search.busLocal.28200" class="INACTIVE">남동구</li>
								<li id="search.busLocal.28140" class="INACTIVE">동구</li>
								<li id="search.busLocal.28177" class="INACTIVE">미추홀구</li>
								<li id="search.busLocal.28237" class="INACTIVE">부평구</li>
								<li id="search.busLocal.28260" class="INACTIVE">서구</li>
								<li id="search.busLocal.28185" class="INACTIVE">연수구</li>
								<li id="search.busLocal.28720" class="INACTIVE">옹진군</li>
								<li id="search.busLocal.28110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.kwangjuLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.29200" class="INACTIVE">광산구</li>
								<li id="search.busLocal.29155" class="INACTIVE">남구</li>
								<li id="search.busLocal.29110" class="INACTIVE">동구</li>
								<li id="search.busLocal.29170" class="INACTIVE">북구</li>
								<li id="search.busLocal.29140" class="INACTIVE">서구</li>
							</ul>
							<ul id="search.daejeonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.30230" class="INACTIVE">대덕구</li>
								<li id="search.busLocal.30110" class="INACTIVE">동구</li>
								<li id="search.busLocal.30170" class="INACTIVE">서구</li>
								<li id="search.busLocal.30200" class="INACTIVE">유성구</li>
								<li id="search.busLocal.30140" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.ulsanLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.31140" class="INACTIVE">남구</li>
								<li id="search.busLocal.31170" class="INACTIVE">동구</li>
								<li id="search.busLocal.31200" class="INACTIVE">북구</li>
								<li id="search.busLocal.31710" class="INACTIVE">울주군</li>
								<li id="search.busLocal.31110" class="INACTIVE">중구</li>
							</ul>
							<ul id="search.sejongLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.36110" class="INACTIVE"></li>
							</ul>
							<ul id="search.kyonggiLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.41820" class="INACTIVE">가평군</li>
								<li id="search.busLocal.41280" class="INACTIVE">고양시</li>
								<li id="search.busLocal.41281" class="INACTIVE">고양시 덕양구</li>
								<li id="search.busLocal.41285" class="INACTIVE">고양시 일산동구</li>
								<li id="search.busLocal.41287" class="INACTIVE">고양시 일산서구</li>
								<li id="search.busLocal.41290" class="INACTIVE">과천시</li>
								<li id="search.busLocal.41210" class="INACTIVE">광명시</li>
								<li id="search.busLocal.41610" class="INACTIVE">광주시</li>
								<li id="search.busLocal.41310" class="INACTIVE">구리시</li>
								<li id="search.busLocal.41410" class="INACTIVE">군포시</li>
								<li id="search.busLocal.41570" class="INACTIVE">김포시</li>
								<li id="search.busLocal.41360" class="INACTIVE">남양주시</li>
								<li id="search.busLocal.41250" class="INACTIVE">동두천시</li>
								<li id="search.busLocal.41190" class="INACTIVE">부천시</li>
								<li id="search.busLocal.41130" class="INACTIVE">성남시</li>
								<li id="search.busLocal.41135" class="INACTIVE">성남시 분당구</li>
								<li id="search.busLocal.41131" class="INACTIVE">성남시 수정구</li>
								<li id="search.busLocal.41133" class="INACTIVE">성남시 중원구</li>
								<li id="search.busLocal.41110" class="INACTIVE">수원시</li>
								<li id="search.busLocal.41113" class="INACTIVE">수원시 권선구</li>
								<li id="search.busLocal.41117" class="INACTIVE">수원시 영통구</li>
								<li id="search.busLocal.41111" class="INACTIVE">수원시 장안구</li>
								<li id="search.busLocal.41115" class="INACTIVE">수원시 팔달구</li>
								<li id="search.busLocal.41390" class="INACTIVE">시흥시</li>
								<li id="search.busLocal.41270" class="INACTIVE">안산시</li>
								<li id="search.busLocal.41273" class="INACTIVE">안산시 단원구</li>
								<li id="search.busLocal.41271" class="INACTIVE">안산시 상록구</li>
								<li id="search.busLocal.41550" class="INACTIVE">안성시</li>
								<li id="search.busLocal.41170" class="INACTIVE">안양시</li>
								<li id="search.busLocal.41173" class="INACTIVE">안양시 동안구</li>
								<li id="search.busLocal.41171" class="INACTIVE">안양시 만안구</li>
								<li id="search.busLocal.41630" class="INACTIVE">양주시</li>
								<li id="search.busLocal.41830" class="INACTIVE">양평군</li>
								<li id="search.busLocal.41670" class="INACTIVE">여주시</li>
								<li id="search.busLocal.41800" class="INACTIVE">연천군</li>
								<li id="search.busLocal.41370" class="INACTIVE">오산시</li>
								<li id="search.busLocal.41460" class="INACTIVE">용인시</li>
								<li id="search.busLocal.41463" class="INACTIVE">용인시 기흥구</li>
								<li id="search.busLocal.41465" class="INACTIVE">용인시 수지구</li>
								<li id="search.busLocal.41461" class="INACTIVE">용인시 처인구</li>
								<li id="search.busLocal.41430" class="INACTIVE">의왕시</li>
								<li id="search.busLocal.41150" class="INACTIVE">의정부시</li>
								<li id="search.busLocal.41500" class="INACTIVE">이천시</li>
								<li id="search.busLocal.41480" class="INACTIVE">파주시</li>
								<li id="search.busLocal.41220" class="INACTIVE">평택시</li>
								<li id="search.busLocal.41650" class="INACTIVE">포천시</li>
								<li id="search.busLocal.41450" class="INACTIVE">하남시</li>
								<li id="search.busLocal.41590" class="INACTIVE">화성시</li>
							</ul>
							<ul id="search.kangwonLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.51150" class="INACTIVE">강릉시</li>
								<li id="search.busLocal.51820" class="INACTIVE">고성군</li>
								<li id="search.busLocal.51170" class="INACTIVE">동해시</li>
								<li id="search.busLocal.51230" class="INACTIVE">삼척시</li>
								<li id="search.busLocal.51210" class="INACTIVE">속초시</li>
								<li id="search.busLocal.51800" class="INACTIVE">양구군</li>
								<li id="search.busLocal.51830" class="INACTIVE">양양군</li>
								<li id="search.busLocal.51750" class="INACTIVE">영월군</li>
								<li id="search.busLocal.51130" class="INACTIVE">원주시</li>
								<li id="search.busLocal.51810" class="INACTIVE">인제군</li>
								<li id="search.busLocal.51770" class="INACTIVE">정선군</li>
								<li id="search.busLocal.51780" class="INACTIVE">철원군</li>
								<li id="search.busLocal.51110" class="INACTIVE">춘천시</li>
								<li id="search.busLocal.51190" class="INACTIVE">태백시</li>
								<li id="search.busLocal.51760" class="INACTIVE">평창군</li>
								<li id="search.busLocal.51720" class="INACTIVE">홍천군</li>
								<li id="search.busLocal.51790" class="INACTIVE">화천군</li>
								<li id="search.busLocal.51730" class="INACTIVE">횡성군</li>
							</ul>
							<ul id="search.chungbookLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.43760" class="INACTIVE">괴산군</li>
								<li id="search.busLocal.43800" class="INACTIVE">단양군</li>
								<li id="search.busLocal.43720" class="INACTIVE">보은군</li>
								<li id="search.busLocal.43740" class="INACTIVE">영동군</li>
								<li id="search.busLocal.43730" class="INACTIVE">옥천군</li>
								<li id="search.busLocal.43770" class="INACTIVE">음성군</li>
								<li id="search.busLocal.43150" class="INACTIVE">제천시</li>
								<li id="search.busLocal.43745" class="INACTIVE">증평군</li>
								<li id="search.busLocal.43750" class="INACTIVE">진천군</li>
								<li id="search.busLocal.43110" class="INACTIVE">청주시</li>
								<li id="search.busLocal.43111" class="INACTIVE">청주시 상당구</li>
								<li id="search.busLocal.43112" class="INACTIVE">청주시 서원구</li>
								<li id="search.busLocal.43114" class="INACTIVE">청주시 청원구</li>
								<li id="search.busLocal.43113" class="INACTIVE">청주시 흥덕구</li>
								<li id="search.busLocal.43130" class="INACTIVE">충주시</li>
							</ul>
							<ul id="search.chungnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.44250" class="INACTIVE">계룡시</li>
								<li id="search.busLocal.44150" class="INACTIVE">공주시</li>
								<li id="search.busLocal.44710" class="INACTIVE">금산군</li>
								<li id="search.busLocal.44230" class="INACTIVE">논산시</li>
								<li id="search.busLocal.44270" class="INACTIVE">당진시</li>
								<li id="search.busLocal.44180" class="INACTIVE">보령시</li>
								<li id="search.busLocal.44760" class="INACTIVE">부여군</li>
								<li id="search.busLocal.44210" class="INACTIVE">서산시</li>
								<li id="search.busLocal.44770" class="INACTIVE">서천군</li>
								<li id="search.busLocal.44200" class="INACTIVE">아산시</li>
								<li id="search.busLocal.44810" class="INACTIVE">예산군</li>
								<li id="search.busLocal.44130" class="INACTIVE">천안시</li>
								<li id="search.busLocal.44131" class="INACTIVE">천안시 동남구</li>
								<li id="search.busLocal.44133" class="INACTIVE">천안시 서북구</li>
								<li id="search.busLocal.44790" class="INACTIVE">청양군</li>
								<li id="search.busLocal.44825" class="INACTIVE">태안군</li>
								<li id="search.busLocal.44800" class="INACTIVE">홍성군</li>
							</ul>
							<ul id="search.jeonbukLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.45790" class="INACTIVE">고창군</li>
								<li id="search.busLocal.45130" class="INACTIVE">군산시</li>
								<li id="search.busLocal.45210" class="INACTIVE">김제시</li>
								<li id="search.busLocal.45190" class="INACTIVE">남원시</li>
								<li id="search.busLocal.45730" class="INACTIVE">무주군</li>
								<li id="search.busLocal.45800" class="INACTIVE">부안군</li>
								<li id="search.busLocal.45770" class="INACTIVE">순창군</li>
								<li id="search.busLocal.45710" class="INACTIVE">완주군</li>
								<li id="search.busLocal.45140" class="INACTIVE">익산시</li>
								<li id="search.busLocal.45750" class="INACTIVE">임실군</li>
								<li id="search.busLocal.45740" class="INACTIVE">장수군</li>
								<li id="search.busLocal.45110" class="INACTIVE">전주시</li>
								<li id="search.busLocal.45113" class="INACTIVE">전주시 덕진구</li>
								<li id="search.busLocal.45111" class="INACTIVE">전주시 완산구</li>
								<li id="search.busLocal.45180" class="INACTIVE">정읍시</li>
								<li id="search.busLocal.45720" class="INACTIVE">진안군</li>
							</ul>
							<ul id="search.jeonnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.46810" class="INACTIVE">강진군</li>
								<li id="search.busLocal.46770" class="INACTIVE">고흥군</li>
								<li id="search.busLocal.46720" class="INACTIVE">곡성군</li>
								<li id="search.busLocal.46230" class="INACTIVE">광양시</li>
								<li id="search.busLocal.46730" class="INACTIVE">구례군</li>
								<li id="search.busLocal.46170" class="INACTIVE">나주시</li>
								<li id="search.busLocal.46710" class="INACTIVE">담양군</li>
								<li id="search.busLocal.46110" class="INACTIVE">목포시</li>
								<li id="search.busLocal.46840" class="INACTIVE">무안군</li>
								<li id="search.busLocal.46780" class="INACTIVE">보성군</li>
								<li id="search.busLocal.46150" class="INACTIVE">순천시</li>
								<li id="search.busLocal.46910" class="INACTIVE">신안군</li>
								<li id="search.busLocal.46130" class="INACTIVE">여수시</li>
								<li id="search.busLocal.46870" class="INACTIVE">영광군</li>
								<li id="search.busLocal.46830" class="INACTIVE">영암군</li>
								<li id="search.busLocal.46890" class="INACTIVE">완도군</li>
								<li id="search.busLocal.46880" class="INACTIVE">장성군</li>
								<li id="search.busLocal.46800" class="INACTIVE">장흥군</li>
								<li id="search.busLocal.46900" class="INACTIVE">진도군</li>
								<li id="search.busLocal.46860" class="INACTIVE">함평군</li>
								<li id="search.busLocal.46820" class="INACTIVE">해남군</li>
								<li id="search.busLocal.46790" class="INACTIVE">화순군</li>
							</ul>
							<ul id="search.kyungbookLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.47290" class="INACTIVE">경산시</li>
								<li id="search.busLocal.47130" class="INACTIVE">경주시</li>
								<li id="search.busLocal.47830" class="INACTIVE">고령군</li>
								<li id="search.busLocal.47190" class="INACTIVE">구미시</li>
								<li id="search.busLocal.47150" class="INACTIVE">김천시</li>
								<li id="search.busLocal.47280" class="INACTIVE">문경시</li>
								<li id="search.busLocal.47920" class="INACTIVE">봉화군</li>
								<li id="search.busLocal.47250" class="INACTIVE">상주시</li>
								<li id="search.busLocal.47840" class="INACTIVE">성주군</li>
								<li id="search.busLocal.47170" class="INACTIVE">안동시</li>
								<li id="search.busLocal.47770" class="INACTIVE">영덕군</li>
								<li id="search.busLocal.47760" class="INACTIVE">영양군</li>
								<li id="search.busLocal.47210" class="INACTIVE">영주시</li>
								<li id="search.busLocal.47230" class="INACTIVE">영천시</li>
								<li id="search.busLocal.47900" class="INACTIVE">예천군</li>
								<li id="search.busLocal.47940" class="INACTIVE">울릉군</li>
								<li id="search.busLocal.47930" class="INACTIVE">울진군</li>
								<li id="search.busLocal.47730" class="INACTIVE">의성군</li>
								<li id="search.busLocal.47820" class="INACTIVE">청도군</li>
								<li id="search.busLocal.47750" class="INACTIVE">청송군</li>
								<li id="search.busLocal.47850" class="INACTIVE">칠곡군</li>
								<li id="search.busLocal.47110" class="INACTIVE">포항시</li>
								<li id="search.busLocal.47111" class="INACTIVE">포항시 남구</li>
								<li id="search.busLocal.47113" class="INACTIVE">포항시 북구</li>
							</ul>
							<ul id="search.kyungnamLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.48310" class="INACTIVE">거제시</li>
								<li id="search.busLocal.48880" class="INACTIVE">거창군</li>
								<li id="search.busLocal.48820" class="INACTIVE">고성군</li>
								<li id="search.busLocal.48250" class="INACTIVE">김해시</li>
								<li id="search.busLocal.48840" class="INACTIVE">남해군</li>
								<li id="search.busLocal.48270" class="INACTIVE">밀양시</li>
								<li id="search.busLocal.48240" class="INACTIVE">사천시</li>
								<li id="search.busLocal.48860" class="INACTIVE">산청군</li>
								<li id="search.busLocal.48330" class="INACTIVE">양산시</li>
								<li id="search.busLocal.48720" class="INACTIVE">의령군</li>
								<li id="search.busLocal.48170" class="INACTIVE">진주시</li>
								<li id="search.busLocal.48740" class="INACTIVE">창녕군</li>
								<li id="search.busLocal.48120" class="INACTIVE">창원시</li>
								<li id="search.busLocal.48125" class="INACTIVE">창원시 마산합포구</li>
								<li id="search.busLocal.48127" class="INACTIVE">창원시 마산회원구</li>
								<li id="search.busLocal.48123" class="INACTIVE">창원시 성산구</li>
								<li id="search.busLocal.48121" class="INACTIVE">창원시 의창구</li>
								<li id="search.busLocal.48129" class="INACTIVE">창원시 진해구</li>
								<li id="search.busLocal.48220" class="INACTIVE">통영시</li>
								<li id="search.busLocal.48850" class="INACTIVE">하동군</li>
								<li id="search.busLocal.48730" class="INACTIVE">함안군</li>
								<li id="search.busLocal.48870" class="INACTIVE">함양군</li>
								<li id="search.busLocal.48890" class="INACTIVE">합천군</li>
							</ul>
							<ul id="search.jejuLocal" class="BusSubLocal HIDDEN">
								<li id="search.busLocal.50130" class="INACTIVE">서귀포시</li>
								<li id="search.busLocal.50110" class="INACTIVE">제주시</li>
							</ul>
						</div>
					</div>
				</div>

				<div id="info.busIntro" class="Howto">
					<strong class="tit_intro">지금, 딱!<br>내가 탈 버스가 어디있는지
					</strong>
					<p class="desc_intro">
						노선 정보는 물론, 실시간으로<br>버스 도착정보와 위치를 확인하세요.
					</p>
					<a href="http://kakaomap.tistory.com/219" class="link_intro"
						target="_blank">서비스 제공지역 안내</a>
				</div>

				<div id="info.bus.search" class="BusResult HIDDEN">
					<div id="info.bus.message" class="busMessage">
						<div id="info.bus.guide" class="guide">
							<div class="BusMessageView">
								<div data-id="current" class="line">
									<p data-id="currenttext" class="desc_search"></p>
									<div data-id="currentupperparagraph" class="paragraph ">
										<div data-id="currentupperwrap" class="wrap">
											<strong class="screen_out">동명지역 선택상자</strong> <em
												class="screen_out">선택내용 :</em> <a
												data-id="currentupperlabel" class="label"></a> <em
												class="screen_out">선택옵션</em>
										</div>
										<p data-id="currentuppertext" class="desc_search text"></p>
									</div>
									<div data-id="currentlowerparagraph" class="paragraph ">
										<div data-id="currentlowerwrap">
											<a data-id="currentlowerlabel" class="label"></a>
										</div>
										<p data-id="currentlowertext" class="desc_search text"></p>
									</div>
								</div>
								<div data-id="next" class="line">
									<a href="#none" data-id="nexttext" class="link_search"></a>
									<div data-id="nextupperparagraph" class="paragraph ">
										<div data-id="nextupperwrap">
											<strong class="screen_out">동명지역 선택상자</strong> <em
												class="screen_out">선택내용 :</em> <a data-id="nextupperlabel"
												class="label"></a> <em class="screen_out">선택옵션</em>
										</div>
										<p data-id="nextuppertext" class="desc_search text"></p>
									</div>
									<div data-id="nextlowerparagraph" class="paragraph ">
										<div data-id="nextlowerwrap">
											<a data-id="nextlowerlabel" class="label"></a>
										</div>
										<p data-id="nextlowertext" class="desc_search text"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="info.bus.title" class="busTitle">
						<h3 class="title">검색결과</h3>
						<span id="info.bus.count" class="cntwrap"></span>
						<div id="info.bus.filter" class="filter"></div>
					</div>
					<ul id="info.bus.list" class="list"></ul>
					<div id="info.bus.page" class="pages HIDDEN">
						<div class="pageWrap">
							<button type="button" id="info.bus.page.prev"
								class="prev disabled">이전</button>
							<a id="info.bus.page.no1" class="INACTIVE" href="#">1</a> <a
								id="info.bus.page.no2" class="INACTIVE" href="#">2</a> <a
								id="info.bus.page.no3" class="INACTIVE" href="#">3</a> <a
								id="info.bus.page.no4" class="INACTIVE" href="#">4</a> <a
								id="info.bus.page.no5" class="INACTIVE" href="#">5</a>
							<button type="button" id="info.bus.page.next" class="next">다음</button>
						</div>
					</div>
					<div id="info.noBus" class="info_nobus HIDDEN">
						<div class="NoBusView">
							<h4 class="noKeyword">
								<!-- <img src="//t1.daumcdn.net/localimg/localimages/07/2013/img/new_nodata_icon.png" width="14" height="14"> 2018-12-11_v2 삭제 -->
								<!-- <span data-id="titleInfo"> 해당 버스번호의 검색결과가 없습니다. </span> -->
								검색 결과가 없어요.
							</h4>
							<!-- 2018-12-11_v2 수정 : 1. 불필요한 요소(span.textColor, span[data-id=titleInfo]) 제거 2. 텍스트 수정 3. 클래스 추가(.noKeyword)-->
							<!-- 2018-12-18 수정 : 태그변경(h5~>h4) -->
							<div class="noRouteDesc" data-id="noRouteDesc"></div>
						</div>
						<div class="NoBusView">
							<h4 class="noKeyword">
								<!-- <img src="//t1.daumcdn.net/localimg/localimages/07/2013/img/new_nodata_icon.png" width="14" height="14"> 2018-12-11_v2 삭제 -->
								<!-- <span data-id="titleInfo"> 해당 버스번호의 검색결과가 없습니다. </span> -->
								검색 결과가 없어요.
							</h4>
							<!-- 2018-12-11_v2 수정 : 1. 불필요한 요소(span.textColor, span[data-id=titleInfo]) 제거 2. 텍스트 수정 3. 클래스 추가(.noKeyword)-->
							<!-- 2018-12-18 수정 : 태그변경(h5~>h4) -->
							<div class="noRouteDesc" data-id="noRouteDesc"></div>
						</div>
					</div>
				</div>

			</div>
			<div id="info.subway" class="SubwayRouteSearch HIDDEN WHITEOUT">
				<h2 class="screen_out">지하철 검색</h2>
				<div class="SubwayRegion WHITEOUT">
					<ul id="info.subway.region">
						<li class="seoul seoul-INACTIVE seoul-ACTIVE"><a href="#">수도권</a></li>
						<li class="busan busan-INACTIVE"><a href="#">부산</a></li>
						<li class="daegu daegu-INACTIVE"><a href="#">대구</a></li>
						<li class="gwangju gwangju-INACTIVE"><a href="#">광주</a></li>
						<li class="daejeon daejeon-INACTIVE"><a href="#">대전</a></li>
					</ul>
					<a href="#none" id="info.subway.remove" class="remove"
						title="모두 지우기">모두 지우기</a>
				</div>

				<div id="info.subway.searchBox"
					class="SubwayRouteSearchBox HIDDEN WHITEOUT">
					<div class="origindestBox">
						<div id="info.subway.searchBox.originBox" class="box">
							<form id="info.subway.searchBox.originForm" class="form">
								<input id="info.subway.searchBox.origin" class="q" type="text"
									value=""> <label for="info.subway.searchBox.origin"><span
									class="holderText op">출발역</span></label> <input class="submit"
									type="submit" value=""> <a href="#"
									id="info.subway.searchBox.originDelete"
									class="delete dl HIDDEN" title="출발역지우기">출발역지우기</a>
							</form>
							<blockquote id="info.subway.searchBox.originSuggest"
								class="SubwayOriginSuggest">
								<div class="suggestBox box_sub">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
						<a href="#" class="to" id="info.subway.searchBox.to"
							title="출발/도착 순서 바꾸기">출발/도착 순서 바꾸기</a>
						<div id="info.subway.searchBox.destBox" class="box dest">
							<form id="info.subway.searchBox.destForm" class="form">
								<input id="info.subway.searchBox.dest" class="q" type="text"
									value=""> <label for="info.subway.searchBox.dest"><span
									class="holderText dp">도착역</span></label> <input class="submit"
									type="submit" value=""> <a href="#"
									id="info.subway.searchBox.destDelete" class="delete dr HIDDEN"
									title="도착역지우기">도착역지우기</a>
							</form>
							<blockquote id="info.subway.searchBox.destSuggest"
								class="SubwayDestSuggest">
								<div class="suggestBox box_sub">
									<div class="baseBox bg">
										<div class="list">
											<ul class="suggest_list_target"></ul>
										</div>
									</div>
									<div class="favorite_find HIDDEN"></div>
									<div class="search_recent recent_none">
										<em class="tit_recent">히스토리가 없어요.</em>
										<ul data-id="wrap" class="list_recent"></ul>
										<div class="favorite_recent">
											<button data-id="disabled" type="button"
												class="btn_recentoff">히스토리 끄기</button>
											<button data-id="clear" type="button"
												class="btn_deleteall HIDDEN">전체삭제</button>
										</div>
									</div>
								</div>
							</blockquote>
						</div>
					</div>
					<div class="options">
						<a href="#" id="info.subway.searchBox.optionBox" class="optionBox"
							title="옵션설정"> <span class="text">출발시간</span> <span
							class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.dayBox"
							class="optionBox day" title="요일설정"> <span class="text">평일</span>
							<span class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.hourBox"
							class="optionBox hour" title="시간설정"> <span class="text">시</span>
							<span class="arrow"></span>
						</a> <a href="#" id="info.subway.searchBox.minuteBox"
							class="optionBox minute" title="시간설정"> <span class="text">분</span>
							<span class="arrow"></span>
						</a>
						<ul id="info.subway.searchBox.listBox" class="listBox HIDDEN"></ul>
					</div>
					<div class="submitBox">
						<span id="info.subway.searchBox.submit" class="go">검색</span>
					</div>
					<div class="resultBox HIDDEN" id="info.subway.searchBox.resultBox">
						<strong class="tit_result">총 2건의 검색결과</strong> <a href="#none"
							class="endCheck"><span class="icon"></span>막차보기</a>
					</div>
				</div>
				<div id="info.subway.history"></div>
				<div id="info.subway.intro" class="Howto">
					<strong class="tit_intro">호선도 중요하지만,<br>시간이 더 중요하니까
					</strong>
					<p class="desc_intro">
						언제 출발해야 하는지부터<br>몇분에 도착할지까지, 한 눈에 확인하세요.
					</p>
				</div>
				<div id="info.subwayInfo" class="subwayInfo HIDDEN">
					<div class="SubwayRouteResultView">
						<h3 class="screen_out">지하철 경로</h3>
						<p class="firstTrainInfo HIDDEN"></p>
						<ul class="list"></ul>
					</div>
				</div>
			</div>
			<div id="info.my" class="FavoriteListView HIDDEN">
				<h2 class="screen_out">MY</h2>
				<div data-id="tab" class="FavoriteMethodType HIDDEN">
					<ul>
						<li id="my.subtab.favorite" class="ACTIVE"><a href="#none">즐겨찾기</a></li>
						<li id="my.subtab.static" class="INACTIVE"><a href="#none">집∙회사</a></li>
						<li id="my.subtab.review" class="INACTIVE"><a href="#none">후기</a></li>
					</ul>
				</div>

				<div class="favorite_interlock HIDDEN">
					<div id="my.favorite" class="favorite_result">
						<h3 class="screen_out">즐겨찾기</h3>
						<div class="favorite_directory">
							<div data-id="header"></div>
							<div data-id="list" class="FavoriteBodyList">
								<div data-id="banner" class="FavoriteBookmarkLink HIDDEN">
									<a href="#none" class="link_bookmark" data-id="bannerContent"></a>
									<button data-id="bannerClose" type="button"
										class="ico_mypage bt_close">닫기</button>
								</div>
								<div class="box_notice HIDDEN" data-id="boxNotice">
									<span class="ico_mypage ico_noti"></span>즐겨찾기는 500개까지 추가할 수
									있습니다.
								</div>
								<ul class="list_detail"></ul>
								<div id="info.my.favorite.page" data-id="pagination"
									class="pages HIDDEN">
									<div class="pageWrap">
										<button type="button" id="info.my.favorite.page.prev"
											class="prev disabled">이전</button>
										<a id="info.my.favorite.page.no1" class="INACTIVE" href="#">1</a>
										<a id="info.my.favorite.page.no2" class="INACTIVE" href="#">2</a>
										<a id="info.my.favorite.page.no3" class="INACTIVE" href="#">3</a>
										<a id="info.my.favorite.page.no4" class="INACTIVE" href="#">4</a>
										<a id="info.my.favorite.page.no5" class="INACTIVE" href="#">5</a>
										<button type="button" id="info.my.favorite.page.next"
											class="next">다음</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="my.static" class="favorite_homecorp HIDDEN">
						<h3 class="screen_out">집회사</h3>
						<ul data-id="staticList">
							<li class="FavoriteDirectoryItem">
								<div class="FavoriteInformationBundle">
									<span class="ico_homecorp home"></span>
									<!-- 아이콘 모양 변경시 클래스 추가 요청 -->
									<div class="info_directory">
										<div class="tit_directory">
											<strong data-id="link" class="txt_directory"><a
												href="#none" class="link_txt">집</a></strong>
										</div>
										<div class="desc_directory">
											<p data-id="name">주소를 등록하면 길찾기가 쉬워집니다.</p>
										</div>
									</div>
									<button type="button" data-id="more" class="btn_more">
										<span class="ico_mypage ico_more">더보기</span>
									</button>
									<!--
        <div class="box_btnmore" data-id="options">
            <a href="#" data-id="regist" class="link_favoradd">등록</a>
            <a href="#" data-id="remove" class="link_favoradd HIDDEN">삭제</a>
        </div>
        -->
								</div>
								<div data-id="setting" class="FavoriteSettingLayer HIDDEN">
									<ul class="list_opt">
										<li data-id="regist"><a href="#none">등록</a></li>
										<li data-id="remove" class="HIDDEN"><a href="#none">삭제</a></li>
									</ul>
								</div>
							</li>
							<li class="FavoriteDirectoryItem">
								<div class="FavoriteInformationBundle">
									<span class="ico_homecorp company"></span>
									<!-- 아이콘 모양 변경시 클래스 추가 요청 -->
									<div class="info_directory">
										<div class="tit_directory">
											<strong data-id="link" class="txt_directory"><a
												href="#none" class="link_txt">회사</a></strong>
										</div>
										<div class="desc_directory">
											<p data-id="name">주소를 등록하면 길찾기가 쉬워집니다.</p>
										</div>
									</div>
									<button type="button" data-id="more" class="btn_more">
										<span class="ico_mypage ico_more">더보기</span>
									</button>
									<!--
        <div class="box_btnmore" data-id="options">
            <a href="#" data-id="regist" class="link_favoradd">등록</a>
            <a href="#" data-id="remove" class="link_favoradd HIDDEN">삭제</a>
        </div>
        -->
								</div>
								<div data-id="setting" class="FavoriteSettingLayer HIDDEN">
									<ul class="list_opt">
										<li data-id="regist"><a href="#none">등록</a></li>
										<li data-id="remove" class="HIDDEN"><a href="#none">삭제</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

					<div id="my.review" class="favorite_evaluation HIDDEN">
						<h3 class="screen_out">후기</h3>
						<div data-id="reviewHeader">
							<div data-id="reviewEmptyPage" class="FavoriteEmptyPage HIDDEN">
								<p class="desc_empty">후기가 없습니다.</p>
							</div>
							<div data-id="filteredReviewEmptyPage"
								class="FavoriteEmptyPage empty_type2 HIDDEN">
								<p class="desc_empty">후기가 없습니다.</p>
								<p class="desc_sub">
									적용한 필터에 해당하는 후기가 없습니다.<br>필터 조건을 변경해 주세요.
								</p>
							</div>
							<div data-id="reviewFilters" class="info_result"></div>
						</div>
						<div data-id="reviewList" class="FavoriteBodyList">
							<ul></ul>
						</div>
						<div id="my.review.page" class="pages HIDDEN">
							<div class="pageWrap">
								<button type="button" id="my.review.page.prev"
									class="prev disabled">이전</button>
								<a id="my.review.page.no1" class="ACTIVE" href="#">1</a> <a
									id="my.review.page.no2" class="INACTIVE" href="#">2</a> <a
									id="my.review.page.no3" class="INACTIVE" href="#">3</a> <a
									id="my.review.page.no4" class="INACTIVE" href="#">4</a> <a
									id="my.review.page.no5" class="INACTIVE" href="#">5</a>
								<button type="button" id="my.review.page.next" class="next">다음</button>
							</div>
						</div>
					</div>
				</div>
				<div id="info.my.intro" class="Howto JOIN HIDDEN">
					<strong class="tit_intro">자주 가는 장소는<br>등록해서 사용해요
					</strong>
					<p class="desc_intro">
						집이나 회사 등 자주 가는 장소는 즐겨찾기로 등록하여<br>언제 어디서나 쉽고 빠르게 확인하세요.
					</p>
					<a href="#none" class="link_my"> 로그인</a>
				</div>
			</div>

			<div id="info.issue" class="section" style="display: none">
				<div id="info.issue.place">
					<h5>
						폭우 피해지도 <span id="info.issue.place.issueCnt"></span>건
					</h5>
					<ul id="info.issue.place.list"></ul>
					<a id="info.issue.place.more" class="more" href="#">장소 더보기(<strong
						id="info.issue.place.more.count">0</strong>)
					</a>
				</div>
			</div>

			<div id="info.thememap" class="thememap section HIDDEN">
				<div id="info.thememap.theme" class="themeMapView HIDDEN">
					<div class="sectiontitle">
						<h5 class="themetit">테마</h5>
						<span class="cntwrap">(<em id="info.thememap.theme.cnt"
							class="cnt">0</em>건)
						</span>
						<ol id="info.thememap.theme.sort" class="Sort">
							<li class="first"><a href="#" class="recent ACTIVE">최신순</a></li>
							<li><a href="#" class="rank INACTIVE">인기순</a></li>
						</ol>
					</div>
					<ul id="info.thememap.theme.recommend" class="themeRecommend">
						<li class="recomTheme HIDDEN"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">달콤한 밤을 위한 재즈클럽</a><span
							class="recomCount">전국 <strong>9</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile7.uf.tistory.com/image/21136C3E530B58282352F3"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">쇼핑천국 전국 아울렛 지도</a><span
							class="recomCount">전국 <strong>23</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile27.uf.tistory.com/image/12347B4E4E72D3101AA9A0"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">분식종결자 떡볶이 지도</a><span
							class="recomCount">전국 <strong>49</strong>곳
						</span></li>
					</ul>
					<ul id="info.thememap.theme.list" class="themeList"></ul>
				</div>
				<div id="info.thememap.placeview" class="themeMapPlaceView HIDDEN">
					<div class="title">
						<a href="#" class="share">공유하기</a> <span></span>
					</div>
					<div class="sectiontitle">
						<h5 class="placetit">장소</h5>
						<span class="cntwrap">(<em id="info.thememap.place.cnt"
							class="cnt">0</em>건)
						</span> <a href="#" class="themeMore">전체 테마 보기</a>
					</div>
					<ul id="info.thememap.place.list" class="themePlaceList"></ul>
					<div class="sectiontitle bottomtitle">
						<h5 class="themeplacetit">추천 테마지도</h5>
						<span class="cntwrap">(<em
							id="info.thememap.placetheme.cnt" class="cnt">0</em>건)
						</span> <a href="#" class="themeMore">전체 테마 보기</a>
					</div>
					<ul id="info.thememap.recommend.list" class="themeRecommendList">
						<li class="recomTheme HIDDEN"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">달콤한 밤을 위한 재즈클럽</a><span
							class="recomCount">전국 <strong>9</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile7.uf.tistory.com/image/21136C3E530B58282352F3"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">쇼핑천국 전국 아울렛 지도</a><span
							class="recomCount">전국 <strong>23</strong>곳
						</span></li>
						<li class="recomTheme"><div class="imgWrap">
								<span class="imgStroke"></span><img
									src="//t1.daumcdn.net/thumb/C75x75/?fname=http://cfile27.uf.tistory.com/image/12347B4E4E72D3101AA9A0"
									width="131" height="118">
							</div>
							<a href="#" class="recomTitle">분식종결자 떡볶이 지도</a><span
							class="recomCount">전국 <strong>49</strong>곳
						</span></li>
					</ul>
				</div>
			</div>
		</div>




		<div class="container">
			<div id="searchList"
				style="width: 27%; float: left; position: relative; top: 0px">
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
			<div id="mapBox" class="mapBox" style="width: 70%"></div>
		</div>
	</section>
	<!--================Contact Area =================-->

	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
	<!-- End footer Area -->

	<!--================Contact Success and Error message Area =================-->
	<div id="success" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-close"></i>
					</button>
					<h2>Sorry !</h2>
					<p>Something went wrong</p>
				</div>
			</div>
		</div>
	</div>
	<div id="map"></div>



	<!--==================== 여기서부터 ====================-->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8704aeb10138e02bdeb9cb9fef81ab9"></script>
	<script>
		// 전체 불러오기
		allData();
		function allData() {
			alert("전체 데이터 받아오기");
			$.ajax({
				url : "../allData",
				type : "get",
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						let htmlData = "";
						htmlData += "<tr><td>--------------------</td></tr>";
						htmlData += "<tr><th><a onclick='clickHere("
								+ data[i].hno
								+ ")' style='color:orange; cursor:pointer'>"
								+ data[i].hosnm + "</a></th></tr>";
						htmlData += "<tr><td>진료과목: " + data[i].sbjnm
								+ "</td></tr>";
						htmlData += "<tr><td>주소: " + data[i].addr
								+ "</td></tr>";
						htmlData += "<tr><td onclick='test()'>전화번호: "
								+ data[i].tel + "</td></tr>";
						$("#hosList").append(htmlData);
					}

					// 데이터 전체 호출
					allBtn(data);
				},
				error : function(data) {
					alert("실패");
				}
			});// ajax
		}// allData

		/*========== 데이터 전체 호출하는 함수 ==========*/
		function allBtn(data) {
			//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
			if (navigator.geolocation) {
				// GeoLocation을 이용해서 접속 위치를 얻어옵니다
				navigator.geolocation
						.getCurrentPosition(function(position) {
							var lat = position.coords.latitude, // 위도
							lon = position.coords.longitude; // 경도

							var mapContainer = document
									.getElementById('mapBox'), // 지도를 표시할 div  
							mapOption = {
								center : new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
								level : 5
							// 지도의 확대 레벨
							};
							var map = new kakao.maps.Map(mapContainer,
									mapOption); // 지도를 생성합니다
							// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
							var mapTypeControl = new kakao.maps.MapTypeControl();
							// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
							// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
							map.addControl(mapTypeControl,
									kakao.maps.ControlPosition.TOPRIGHT);
							// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
							var zoomControl = new kakao.maps.ZoomControl();
							map.addControl(zoomControl,
									kakao.maps.ControlPosition.RIGHT);
							// 마커를 표시할 위치와 title 객체 배열입니다 
							var positions = [];
							for (var i = 0; i < data.length; i++) {
								positions
										.push({
											title : '<div style="padding:5px;">'
													+ data[i].hosnm
													+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
											latlng : new kakao.maps.LatLng(
													data[i].xpos, data[i].ypos)
										})
							}
							// 마커 이미지의 이미지 주소입니다
							var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
							for (var i = 0; i < positions.length; i++) {
								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new kakao.maps.Size(24, 35);
								// 마커 이미지를 생성합니다    
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize);
								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : positions[i].latlng,
									image : markerImage
								});

								var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
								// 마커에 표시할 인포윈도우를 생성합니다 
								var infowindow = new kakao.maps.InfoWindow({
									content : positions[i].title, // 인포윈도우에 표시할 내용
									removable : iwRemoveable
								});
								// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
								// 이벤트 리스너로는 클로저를 만들어 등록합니다 
								// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								kakao.maps.event.addListener(marker, 'click',
										makeOverListener(map, marker,
												infowindow));
							}// for

							/* // '내 위치' 마커 이미지의 이미지 주소입니다
							var myImageSrc = "https://icons.veryicon.com/png/o/leisure/tourism-icon/location-39.png"; 
							var myImageSize = new kakao.maps.Size(24, 35); 
							// '내 위치' 마커 이미지를 생성합니다    
							var myMarkerImage = new kakao.maps.MarkerImage(myImageSrc, myImageSize); */
							// '내 위치' 마커가 표시될 위치입니다 
							var myMarkerPosition = new kakao.maps.LatLng(lat,
									lon);
							// '내 위치' 마커를 생성합니다
							var myMarker = new kakao.maps.Marker({
								position : myMarkerPosition,
							//image: myMarkerImage
							});
							// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
							myMarker.setMap(map);

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
						});// 접속위치 (lat, lng)
			}// 위치정보 if문
		}// allBtn()

		/*========== 1개 데이터 호출하는 함수 ==========*/
		function clickHere(hno) {
			object.clickHere(hno);
		}

		// 함수 정의
		var object = {
			// clickHere
			clickHere : function clickHere(hno) {
				$("#mapBox").empty();// 기존 지도 비우기
				$
						.ajax({
							url : "../allData",// 데이터 전체 가져오기
							type : "get",
							async : false,
							success : function(data) {
								var allData = data;
								// 전체좌표배열
								var m = [];
								for (var i = 0; i < data.length; i++) {
									m.push([ data[i].xpos, data[i].ypos ]);
								}

								$
										.ajax({
											url : "../oneData",// 1개 데이터 가져오기
											type : "get",
											data : {
												"hno" : hno
											},
											async : false,
											success : function(data) {

												// 부드럽게 이동 구현 아직 안됨;;;

												// GeoLocation을 이용해서 접속 위치를 얻어옵니다
												navigator.geolocation
														.getCurrentPosition(function(
																position) {
															var lat = position.coords.latitude, // 위도
															lon = position.coords.longitude; // 경도
															// '선택한 장소'의 위치 
															var latOne = data[0].xpos, // 위도
															lonOne = data[0].ypos; // 경도
															var mapContainer = document
																	.getElementById('mapBox'), // 지도를 표시할 div  
															mapOption = {
																center : new kakao.maps.LatLng(
																		latOne,
																		lonOne), // '선택한 장소'로 지도의 중심좌표 옮기기
																level : 3
															// 지도의 확대 레벨
															};
															var map = new kakao.maps.Map(
																	mapContainer,
																	mapOption); // 지도를 생성합니다
															// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
															var mapTypeControl = new kakao.maps.MapTypeControl();
															// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
															// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
															map
																	.addControl(
																			mapTypeControl,
																			kakao.maps.ControlPosition.TOPRIGHT);
															// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
															var zoomControl = new kakao.maps.ZoomControl();
															map
																	.addControl(
																			zoomControl,
																			kakao.maps.ControlPosition.RIGHT);
															// 전체 데이터의 마커를 표시할 위치와 title 객체 배열입니다 
															var positions = [];
															for (var i = 0; i < allData.length; i++) {
																positions
																		.push({
																			title : '<div style="padding:5px;">'
																					+ allData[i].hosnm
																					+ '<br><a href="https://map.kakao.com/link/to/'+allData[i].hosnm+','+allData[i].xpos+','+allData[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
																			latlng : new kakao.maps.LatLng(
																					allData[i].xpos,
																					allData[i].ypos)
																		})
															}// for

															// '선택 위치' 마커 이미지의 이미지 주소입니다
															var imageSrcOne = "https://icons.veryicon.com/png/o/miscellaneous/multicolor-3/location-point-1.png";
															// '선택 위치' 마커 이미지의 이미지 크기 입니다
															var imageSizeOne = new kakao.maps.Size(
																	70, 70);
															// '선택 위치' 마커 이미지를 생성합니다    
															var markerImageOne = new kakao.maps.MarkerImage(
																	imageSrcOne,
																	imageSizeOne);
															// '선택 위치' 마커가 표시될 위치입니다 
															var positionOne = new kakao.maps.LatLng(
																	latOne,
																	lonOne);
															// '선택 위치' 마커를 생성합니다
															var markerOne = new kakao.maps.Marker(
																	{
																		map : map, // 마커를 표시할 지도
																		position : positionOne,
																		image : markerImageOne,
																	});

															// '전체' 마커 이미지의 이미지 주소입니다
															var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
															for (var i = 0; i < positions.length; i++) {
																// 마커 이미지의 이미지 크기 입니다
																var imageSize = new kakao.maps.Size(
																		24, 35);
																// 마커 이미지를 생성합니다    
																var markerImage = new kakao.maps.MarkerImage(
																		imageSrc,
																		imageSize);
																// 마커를 생성합니다
																var marker = new kakao.maps.Marker(
																		{
																			map : map, // 마커를 표시할 지도
																			position : positions[i].latlng,
																			image : markerImage,
																		});
																var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
																// 마커에 표시할 인포윈도우를 생성합니다 
																var infowindow = new kakao.maps.InfoWindow(
																		{
																			content : positions[i].title, // 인포윈도우에 표시할 내용
																			removable : iwRemoveable
																		});
																// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
																// 이벤트 리스너로는 클로저를 만들어 등록합니다 
																// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
																kakao.maps.event
																		.addListener(
																				marker,
																				'click',
																				makeOverListener(
																						map,
																						marker,
																						infowindow));
															}// for

															// '내 위치' 마커가 표시될 위치입니다 
															var myMarkerPosition = new kakao.maps.LatLng(
																	lat, lon);
															// '내 위치' 마커를 생성합니다
															var myMarker = new kakao.maps.Marker(
																	{
																		position : myMarkerPosition,
																	//image: myMarkerImage
																	});
															// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
															myMarker
																	.setMap(map);

															// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
															function makeOverListener(
																	map,
																	marker,
																	infowindow) {
																return function() {
																	infowindow
																			.open(
																					map,
																					marker);
																};
															}
															// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
															function makeOutListener(
																	infowindow) {
																return function() {
																	infowindow
																			.close();
																};
															}
														});// 위치정보
											},
											error : function() {
												alert("실패");
											}
										});// ajax 데이터 1개
							}// success 전체 데이터
						});// ajax 전체 데이터
			}// clickHere
			,
			// aMethod3
			aMethod3 : function() {
				console.log("aMethod3호출됨333");
			}
		}

		/* -------------------- 병원버튼 --------------------  */
		function hosBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("병원 데이터 받아오기");
						$
								.ajax({
									url : "../hosBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr>";
											htmlData += "<td>" + data[i].hosnm
													+ "</td>";
											htmlData += "<td>" + data[i].sbjnm
													+ "</td>";
											htmlData += "<td>" + data[i].addr
													+ "</td>";
											htmlData += "<td>" + data[i].tel
													+ "</td>";
											htmlData += "</tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/business/wb-legend-of-shanghai-ocean-bearing-body/wb_-hospital.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													35, 35);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
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
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn

		/* -------------------- 약국버튼 --------------------  */
		function pharmBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("약국 데이터 받아오기");
						$
								.ajax({
									url : "../pharmBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr>";
											htmlData += "<td>" + data[i].hosnm
													+ "</td>";
											htmlData += "<td>" + data[i].sbjnm
													+ "</td>";
											htmlData += "<td>" + data[i].addr
													+ "</td>";
											htmlData += "<td>" + data[i].tel
													+ "</td>";
											htmlData += "</tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/healthcate-medical/mental-health-department-icon-library/pharmacy-department.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													40, 40);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
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
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn

		/* -------------------- 요양병원버튼 --------------------  */
		function nursBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("요양병원 데이터 받아오기");
						$
								.ajax({
									url : "../nursBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr>";
											htmlData += "<td>" + data[i].hosnm
													+ "</td>";
											htmlData += "<td>" + data[i].sbjnm
													+ "</td>";
											htmlData += "<td>" + data[i].addr
													+ "</td>";
											htmlData += "<td>" + data[i].tel
													+ "</td>";
											htmlData += "</tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/business/service-icon-1/s_-provide-for-the-aged.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													40, 40);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
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
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn
	</script>
	<!--================End Contact Success and Error message Area =================-->

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











</body>

</html>