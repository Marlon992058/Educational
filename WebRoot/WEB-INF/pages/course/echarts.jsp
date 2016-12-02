<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>模版页面——Marlon</title>
	<%@include file="../common/common.jsp" %>
  </head>
<body style="background:url('${basePath}/resources/images/bg2.jpg')">
	<div class="wrap">
		<%@include file="/WEB-INF/pages/common/menu.jsp"%>
		<div class="content">
			<%@include file="/WEB-INF/pages/common/header.jsp"%>
			<!-- 内容区 -->
			<div class="wrapbox">
				<table class="tm_table">
					<caption
						style="text-align:center;padding:8px;font-weight:700;font-size:18px;">
						选修课人数统计报表</caption>
					<tbody id="tmblog">
						<tr id="main" style="height:540px"></tr>
					</tbody>
				</table>
			</div>
			<div class="clearfix"></div>
			<!-- end 内容区 -->
		</div>
	</div>
	<script src="${basePath}/resources/js/echart/echarts.js"></script>
	<script src="${basePath}/resources/js/echart/echarts-all.js"></script>
	<script type="text/javascript">
	$(function(){
		loadData();
	});
 
	 function loadData(){
		 $.ajax({
	 		type:"post",
	 		url:adminPath + "/user/courseCharts",
	 		success:function(data){
	 			var json = {
					title :'选修课人数统计报表示例图',
					datas:parseData(data)
				};
	 			initChart("main",json);
	 		}
		 });
	 }
		
	//json数据的处理	 
	 function parseData(jsonArr){
			var arr = [];
			var counts = [];
			var names = [];
			for(var i=1;i<jsonArr.length;i++){
				counts.push(jsonArr[i].counts);
				names.push(jsonArr[i].courseName);
			}
			arr.push(counts);
			arr.push(names);
			return arr;
		}
		 
		//初始化报表
		function initChart(targetId,json){
			var myChart = echarts.init(document.getElementById(targetId));
			myChart.showLoading();
			var option = {
			    title : {
			    	x : "left",//居中显示
			        text: json.title/* ,
			        subtext: '课程名/人数' */
			    },
			    tooltip : {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            magicType : {show: true, type: ['line', 'bar']},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    calculable : true,
			    //X轴显示信息
			    xAxis : [
			        {
			            type : 'value',//代码数字形式显示
			        }
			    ],
			    //Y轴显示信息
			    yAxis : [
			        {
			            type : 'category',
			            data : json.datas[1]
			        }
			    ],
			    series : [
			        {
			        	itemStyle : {
							normal : {
								color : "#00B38C"/* #1CDDB1 */
							}
						},
			            name:'学员人数',//提示显示
			            type:'bar',
			            data:json.datas[0],
			            markPoint : {
			                data : [
			                    {type : 'max', name: '最大值'},
			                    {type : 'min', name: '最小值'}
			                ],
			                effect:{
			                    show: false,
			                    type: 'scale',
			                    loop: true,
			                    period: 15,
			                    scaleSize : 2,
			                    bounceDistance: 10,
			                    color : "#00B38C",
			                    shadowColor : "#00B38C",
			                    shadowBlur : 0
			                }  
			            },
			            markLine : {
			                data : [
			                    {type : 'average', name: '平均值'}
			                ]
			            }
			        }
			    ]
			};
			myChart.hideLoading();
			myChart.setOption(option);
		};
	</script>
</body>
</html>
