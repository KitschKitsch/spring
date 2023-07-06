<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<title>Chart</title>
		<style>
			#main{width: 1000px; margin: 10px auto;}
			h3{width: 1000px; text-align: center;}
			#chartBody{width: 900px; height: 500px;  border: 1px solid black; margin: 0 auto;]}
		</style>
		<script>
			function chartBtn() {
				
				alert("그래프가 그려집니다.");
				
				let chart_labels = [];
				let chart_data = [];
				  
				  // Controller에서 데이터 가져오기
				  $.ajax({
					  url:"/chart_data",
					  type:"post",
					  dataType:"json", // json - list(IncomeDto)
					  data:{"year":$("#year").val()},
					  success: function(data) {
						  
						  alert("성공");
						  console.log(data);
						  
						  // 배열에 데이터 추가(자바스크립트): push
						  $.each(data, function(index, value){
							  console.log(value);
							  chart_labels.push(value.imonth);
							  chart_data.push(value.iincome);
						  });// each
						  
						  
						  // 그래프 그리기 함수 호출
						  createChart(chart_labels, chart_data); 
					  },
					  error: function() {
						  alert("실패");
					  }
				  });// ajax
			}// chartBtn
			
			
			function createChart(chart_labels, chart_data) {
				 // Chart객체 리셋해야 다시 차트를 그릴 수 있음!!!
				let chartStatus = Chart.getChart("myChart"); // <canvas> id
				if (chartStatus != undefined) { // 만약 myChart 이미 있으면
				  chartStatus.destroy(); // 객체선언을 삭제
				} 
				
				new Chart($("#myChart"), {
				    type: 'bar',
				    data: {
				      labels: chart_labels,
				      datasets: [{
				        label: '매출액 그래프',
				        data: chart_data,
				        borderWidth: 1,
				        backgroundColor: [
	                           'rgba(255, 99, 132, 0.5)',
	                           'rgba(54, 162, 235, 0.5)',
	                           'rgba(255, 206, 86, 0.5)',
	                           'rgba(75, 192, 192, 0.5)',
	                           'rgba(153, 102, 255, 0.5)',
	                           'rgba(255, 159, 64, 0.5)'
	                           ]
				      }]
				    },
				    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        }
				      }
				    }
				  });// 그래프
				  
			
			}// createChart
		</script>
	</head>
	<body>
		<select id="year">
			<option value="$">전체</option>
			<option value="2023">2023</option>
			<option value="2022">2022</option>
		</select>
		<button onclick="chartBtn()">차트 데이터 불러오기</button>
		<br>
		<div id="main">
			<h3>매출액 그래프</h3>
			<div id="chartBody">
			  <canvas id="myChart"></canvas>
			</div>	
		</div>
		
	</body>
</html>