<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유/일상 게시판</title>
	</head>
	<body>
		<section>
		    <h1>NOTICE</h1>
		    <script>
		    
		/*     $(function(){
		    	$("#s_word").on("keyup", function(key) {
		    		if(key.keyCode==13) {
		    			alert("엔터키 이벤트 실행");
		    			return false;
		    		}
		    		return false;
		    	})
		    }); */
		    
 		// 검색기능
	    	function searchBtn() {
	    		if($("#s_word").val().length<2) {// 아이디(s_word) 값의 길이가 2미만이면
	    			alert("2글자 이상 입력하세요.");
	    			$("#s_word").focus();// 자동포커싱
	    			return false;
	    		}
	    		search.submit();// search를 전송
	    		
	    	}
	    </script>
	    <div class="wrapper">
	      <form action="../board/boardList" name="search" method="post"><!-- category, s_word 넘김 -->
	        <select name="category" id="category">
	          <option value="all">전체</option>
	          <option value="btitle">제목</option>
	          <option value="bcontent">내용</option>
	        </select>
	
	        <div class="title">
	          <input type="text" style="display: none;">
	          <input type="text" name="s_word" id="s_word" size="16" value="${s_word}">
	        </div>
	  
	        <button type="button" onclick="searchBtn()"><i class="fas fa-search"></i></button>
	      </form>
	    </div>
	
	    <table>
	      <colgroup>
	        <col width="15%">
	        <col width="40%">
	        <col width="15%">
	        <col width="15%">
	        <col width="15%">
	      </colgroup>
	      <!-- 제목부분 -->
	      <tr>
	        <th>No.</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>조회수</th>
	      </tr>
	      <!-- 내용부분 -->
	      <c:forEach var="board" items="${list}"><!-- 모델로 들고온 데이터 이름  -->
		      <tr>
		        <td><span class="table-notice">${board.bno}</span></td>
		        <td class="table-title">
			        <c:forEach begin="1" end="${board.bindent}" step="1"><!-- 답변 들여쓰기(bindent는 답변 달릴 때마다 1씩 증가함) -->
						<img src="../images/icon_reply.png">
			        </c:forEach>
			        <a href="boardView?bno=${board.bno}&page=${page}&category=${category}&s_word=${s_word}"><!-- 검색범위와 검색어도 들고감  -->
			        	${board.btitle}
			        </a>
		        </td>
		        <td>${board.id}</td>
		        <td>
		        	<fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"../><!-- 날짜 형식 지정 -->
		        </td>
		        <td>${board.bhit}</td>
		      </tr>
	      </c:forEach>
	      
	    </table>
	
	    <ul class="page-num">
	    
	      <!-- 첫 페이지 이동 -->
	      <c:if test="${page != startPage}">
	        <a href="../board/boardList?page=1&category=${category}&s_word=${s_word}"><li class="first"></li></a><!-- 검색결과에 따라 하단 페이지 달라지니까! -->
	      </c:if>
	      <c:if test="${page == startPage}">
	        <li class="first"></li>
	      </c:if>
	    
	      <!-- 이전 페이지 이동 -->
	      <c:if test="${page > 1}">
		      <a href="../board/boardList?page=${page-1}&category=${category}&s_word=${s_word}"><li class="prev"></li></a>
	      </c:if>
	      <c:if test="${page == 1}">
		      <li class="prev"></li>
	      </c:if>
	      
	      <!-- 하단 페이지 번호 넣기 -->      
	      <c:forEach begin="${startPage}" end="${endPage}" step="1" var="num">
	      	<c:if test="${num != page}">
		      	<a href="../board/boardList?page=${num}&category=${category}&s_word=${s_word}">
	      			<li class="num"><div>${num}</div></li>
	    	  	</a>
	      	</c:if>
	      	<c:if test="${num == page}">
	      		<li class="num on"><div>${num}</div></li>
	      	</c:if>
	      </c:forEach>
	      
	      <!-- 다음 페이지 이동 -->
	      <c:if test="${page < maxPage}">
	      	<a href="../board/boardList?page=${page+1}&category=${category}&s_word=${s_word}"><li class="next"></li></a>
	      </c:if>
	      <c:if test="${page == maxPage}">
	      	<li class="next"></li>
	      </c:if>
	      
	      <!-- 끝 페이지 이동 -->
	      <c:if test="${page != maxPage}">
	      	<a href="../board/boardList?page=${maxPage}&category=${category}&s_word=${s_word}"><li class="last"></li></a>
	      </c:if>
	      <c:if test="${page == maxPage}">
	      	<li class="last"></li>
	      </c:if>
	    </ul>
	
	    <a href="../board/boardWrite"><div class="write">쓰기</div></a>
	  </section>
			
	</body>
</html>