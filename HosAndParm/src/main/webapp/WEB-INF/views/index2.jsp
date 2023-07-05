<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>공공데이터 xml</title>
		<style>
			h3{text-align: center;}
			table{width: 1000px; margin: 0 auto; text-align: center;}
			table,th,td{border: 1px solid black; border-collapse: collapse;}
			/* th,td{width: 200px; height: 60px;} */
			img{width: 60px;}
			div{width: 350px; height: 60px; margin: 10px auto;}
			input{width: 200px; height: 30px;}
			button{width: 120px; height: 35px;}
		</style>
		<script>
			function ajax_hos() {
				alert("공공데이터를 가져옵니다.");
				
				$.ajax({
					url:"/ajax_hos",
					type:"get",
					dataType:"xml",
					data:{"page":"1"},
					success: function(data) {
						alert("성공");
						console.log(data);
						
						let htmlData="";
		    			_xml = $(data).find("items"); //items태그 찾기
		    			let len = _xml.find("item").length; //길이:10
		    			
		    			for(let i=0;i<len;i++){
		    				htmlData += "<tr>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("addr").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("clCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("clCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcSdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detySdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("drTotCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("emdongNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("estbDd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptSdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("pnursCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("postNo").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sgguCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sgguCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sidoCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sidoCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("telno").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("XPos").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("YPos").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("yadmNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("ykiho").text()  +"</td>";
		    				htmlData += "</tr>";
		    			}
		    			
		    			$("#tbody").html(htmlData);
						
						
					},
					error: function() {
						alert("실패");
					}
				});
			}// function: ajax_xml
			
			function ajax_parm() {
				alert("공공데이터를 가져옵니다.");
				
				$.ajax({
					url:"/ajax_parm",
					type:"get",
					dataType:"xml",
					data:{"page":"1"},
					success: function(data) {
						alert("성공");
						console.log(data);
						
						let htmlData="";
		    			_xml = $(data).find("items"); //items태그 찾기
		    			let len = _xml.find("item").length; //길이:10
		    			
		    			for(let i=0;i<len;i++){
		    				htmlData += "<tr>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("addr").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("clCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("clCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("cmdcSdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detyResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("detySdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("drTotCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("emdongNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("estbDd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptGdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptIntnCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptResdntCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("mdeptSdrCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("pnursCnt").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("postNo").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sgguCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sgguCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sidoCd").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("sidoCdNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("telno").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("XPos").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("YPos").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("yadmNm").text()  +"</td>";
		    				htmlData += "<td>"+ _xml.find("item").eq(i).find("ykiho").text()  +"</td>";
		    				htmlData += "</tr>";
		    			}
		    			
		    			$("#tbody").html(htmlData);
						
						
					},
					error: function() {
						alert("실패");
					}
				});
			}// function: ajax_xml
			
		</script>
	</head>
	<body>
		<h2>0704 메인페이지 xml</h2>
		<p></p>
		<button type="button" onclick="ajax_hos()">병원 데이터 가져오기</button>
		<button type="button" onclick="ajax_parm()">약국 데이터 가져오기</button>
		<br>
		<h3>관광정보</h3>
		<div>
			<input type="text" name="s_word" id="s_word">
			<button type="button" onclick="search()">검색</button> 
		</div>
		<table>
			<tr>
				<th>addr</th>
				<th>clCd</th>
				<th>clCdNm</th>
				<th>cmdcGdrCnt</th>
				<th>cmdcIntnCnt</th>
				<th>cmdcResdntCnt</th>
				<th>cmdcSdrCnt</th>
				<th>detyGdrCnt</th>
				<th>detyIntnCnt</th>
				<th>detyResdntCnt</th>
				<th>detySdrCnt</th>
				<th>drTotCnt</th>
				<th>emdongNm</th>
				<th>estbDd</th>
				<th>mdeptGdrCnt</th>
				<th>mdeptIntnCnt</th>
				<th>mdeptResdntCnt</th>
				<th>mdeptSdrCnt</th>
				<th>pnursCnt</th>
				<th>postNo</th>
				<th>sgguCd</th>
				<th>sgguCdNm</th>
				<th>sidoCd</th>
				<th>sidoCdNm</th>
				<th>telno</th>
				<th>XPos</th>
				<th>YPos</th>
				<th>yadmNm</th>
				<th>ykiho</th>
			</tr>
			<tbody id="tbody">
			<tr>
				<td colspan="5"> 데이터 검색</td>
			</tr>
			</tbody>
		</table>
		
	</body>
</html>