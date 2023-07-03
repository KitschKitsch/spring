<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>

</head>
<body>

<div id="allwrap">
<div id="wrap">

	<!-- // top.jsp -->
	<%@ include file="../top.jsp" %>

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">COMMUNITY</a></li>
				<li class="last">NOTICE</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">CUSTOMER<span>고객센터</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">NOTICE</a></li>
					<li><a href="#" id="leftNavi2">1:1문의</a></li>
					<li><a href="#" id="leftNavi3">FAQ</span></a></li>
					<li class="last"><a href="#" id="leftNavi4">이용안내</a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="customer">
					<h2><strong>NOTICE</strong><span>쟈뎅샵 소식을 전해드립니다.</span></h2>
					
					<div class="orderDivMt">
						<table summary="NO, 제목, 등록일, 조회수 순으로 공지사항을 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							<caption>공지사항 보기</caption>
							<colgroup>
							<col width="10%" class="tnone" />
							<col width="*" />
							<col width="14%" class="tw25" />
							<col width="14%" class="tnone" />
							</colgroup>
							<thead>
								<th scope="col" class="tnone">NO.</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
								<th scope="col" class="tnone">조회수</th>
							</thead>
							<tbody>
								
								<c:forEach var="board" items="${list}"> <!-- model의 "list: list" 를 "board: list"로 -->
									<tr>
										<td class="tnone">${board.bno}</td>
										<td class="left">
											<a href="/board/noticeView?bno=${board.bno}" class="lightgray">${board.btitle}</a>
										</td>
										<td><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd" /></td> <!-- 날짜 형식 지정 -->
										<td class="tnone">${board.bhit}</td>
									</tr>
								</c:forEach>
								
								<%--
								<tr>
									<td class="tnone">1</td>
									<td class="left">
										<a href="/board/noticeView?bno=1">쟈뎅 전문 쇼핑몰 쟈뎅샵이 리뉴얼 오픈합니다.</a>
										<img src="../images/ico/ico_new.gif" alt="NEW" />
									</td>
									<td>14-01-28</td>
									<td class="tnone right">9999</td>
								</tr>
								 --%>
								
								

							</tbody>
						</table>
					</div>
						


					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

						<a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a><a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a><a href="#" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
						<!-- //페이징이동1 -->
					</div>
<script>
 	function searchBtn() {
 		if($(".searchInput").val().length < 2) {
 			alert("2글자 이상부터 검색이 가능합니다.");
 			$(".searchInput").focus();
 			return false;
 		}
 		search.submit();
 	}
</script>
					<div class="searchWrap">
						<div class="search">
							<form action="board/notice" name="search" method="post">
								<ul>
									<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
									<li class="se">
										<select name="category" id="category">
											<option value="all" />전체</option>
											<option value="btitle" />제목</option>
											<option value="bcontent" />내용</option>
										</select>
									</li>
									<li><input type="text" name="s_word" class="searchInput" /></li>
									<li class="web"><a onclick="searchBtn()"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
									<li class="mobile"><a onclick="searchBtn()"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
								</ul>
							</form>
						</div>
					</div>
					<!-- //포토 구매후기 -->


				</div>
			</div>
			<!-- //contents -->

		</div>
	</div>
	<!-- //container -->




	<!-- // footer -->
	<%@ include file="../footer.jsp" %>



</div>
</div>
</body>
</html>