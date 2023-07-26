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
		
		
		
		
		
		<script>
		let width, height, gradient;
		function getGradient(ctx, chartArea) {
		  const chartWidth = chartArea.right - chartArea.left;
		  const chartHeight = chartArea.bottom - chartArea.top;
		  if (!gradient || width !== chartWidth || height !== chartHeight) {
		    // Create the gradient because this is either the first render
		    // or the size of the chart has changed
		    width = chartWidth;
		    height = chartHeight;
		    gradient = ctx.createLinearGradient(0, chartArea.bottom, 0, chartArea.top);
		    gradient.addColorStop(0, Utils.CHART_COLORS.blue);
		    gradient.addColorStop(0.5, Utils.CHART_COLORS.yellow);
		    gradient.addColorStop(1, Utils.CHART_COLORS.red);
		  }
		  return gradient;
		}
		
		
		
		new $("#myChart2"), {
				  type: 'line',
				  data: data,
				  options: {
				    responsive: true,
				    plugins: {
				      legend: {
				        position: 'top',
				      },
				    }
				  },
		};
		
		const DATA_COUNT = 7;
		const NUMBER_CFG = {count: DATA_COUNT, min: -100, max: 100};
		const labels = Utils.months({count: 7});

		const data = {
		  labels: labels,
		  datasets: [
		    {
		      label: 'Dataset 1',
		      data: Utils.numbers(NUMBER_CFG),
		      borderColor: function(context) {
		        const chart = context.chart;
		        const {ctx, chartArea} = chart;

		        if (!chartArea) {
		          // This case happens on initial chart load
		          return;
		        }
		        return getGradient(ctx, chartArea);
		      },
		    },
		  ]
		};
		
		const actions = [
			  {
			    name: 'Randomize',
			    handler(chart) {
			      chart.data.datasets.forEach(dataset => {
			        dataset.data = Utils.numbers({count: chart.data.labels.length, min: -100, max: 100});
			      });
			      chart.update();
			    }
			  },
			  {
			    name: 'Add Data',
			    handler(chart) {
			      const data = chart.data;
			      if (data.datasets.length > 0) {
			        data.labels = Utils.months({count: data.labels.length + 1});

			        for (let index = 0; index < data.datasets.length; ++index) {
			          data.datasets[index].data.push(Utils.rand(-100, 100));
			        }

			        chart.update();
			      }
			    }
			  },
			  {
			    name: 'Remove Data',
			    handler(chart) {
			      chart.data.labels.splice(-1, 1); // remove the label first

			      chart.data.datasets.forEach(dataset => {
			        dataset.data.pop();
			      });

			      chart.update();
			    }
			  }
			];
		
		
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
			  <canvas id="myChart2"></canvas>
			</div>	
		</div>
		
	</body>
</html>