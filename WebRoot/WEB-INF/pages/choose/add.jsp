<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>模版页面——Marlon</title>
	<style type="text/css">
		#add-tab{width:400px;margin:10px auto;}
		#add-tab td{height:32px;}
		#add-tab .add-fr{text-align:right;width:90px;}
		#add-tab .add-fl{text-align:left;}
		#add-tab .add-fl input{width:89%;height:100%}
		#add-tab .add-fl input[type='radio']{width:15px;height:15px;margin-left:15px;}
		#add-tab .add-fc{text-align:center;border:0px;}
	</style>
	<%@include file="../common/common.jsp" %>
  </head>
<body style="background:url('${basePath}/resources/images/bg2.jpg')">
	<div class="wrap">
		<%@include file="/WEB-INF/pages/common/menu.jsp"%>
		<div class="content">
			<%@include file="/WEB-INF/pages/common/header.jsp"%>
			<!-- 内容区 -->
			<div class="wrapbox">
				<table id="add-tab" class="tm_table">
					<caption
						style="text-align:center;padding:8px;font-weight:700;font-size:18px;">
						添加选修课信息</caption>
					<tbody id="tmblog">
						<tr>
							<td class="add-fr">课程名称：</td>
							<td class="add-fl"><input type="text" name="courseName" id="courseName"/></td>
						</tr>
						<tr>
							<td class="add-fr">老师：</td>
							<td class="add-fl"><input type="text" name="teacher" id="teacher"/></td>
						</tr>
						<tr>
							<td class="add-fr">学分：</td>
							<td class="add-fl"><input type="text" name="credit" id="credit"/></td>
						</tr>
						<tr>
							<td class="add-fr">开课时间：</td>
							<td class="add-fl"><label for="startTime"><input type="datetime" id="startTime" name="startTime" value="2016-01-02 12:00:00" /></label></td>
						</tr>
						<tr>
							<td class="add-fr">结课时间：</td>
							<td class="add-fl"><label for="endTime"><input type="datetime" id="endTime" name="endTime" value="2016-12-12 12:00:00" /></label></td>
						</tr>
						<tr>
							<td class="add-fc" colspan="2"><a href="javascript:void(0)" onclick="add()">添加</a></td>
						</tr>
					</tbody>
				</table>
				<div class="tmpage"></div>
			</div>
			<div class="clearfix"></div>
			<!-- end 内容区 -->
		</div>
	</div>
	<script type="text/javascript">
		/* $(function(){
			var myDate = new Date();
			//myDate.toLocaleDateString();//可以获取当前日期 
			var year = myDate.getFullYear(); //获取完整的年份(4位)
			var month = myDate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var startDate = year + '-' + month + '-01';
			var endDate = year+'-'+month+'-'+new Date(year,month,0).getDate();//获取当前月份最后一天
			$("#startTime").val(startDate);
			$("#endTime").val(endDate);
		}); */
		
		function add(){
			var courseName = $("#courseName").val();
			var teacher = $("#teacher").val();
			var credit = $("#credit").val();
			var startTime = $("#startTime").val();
			var endTime = $("#endTime").val();
			if(isEmpty(courseName)){
				tip("该选项是必填项！","warn");
				$("#courseName").focus();
				return;
			}
			if(isEmpty(teacher)){
				tip("该选项是必填项！","warn");
				$("#teacher").focus();
				return;
			}
			if(isEmpty(credit)){
				tip("该选项是必填项！","warn");
				$("#credit").focus();
				return;
			}
			if(isEmpty(startTime)||isEmpty(endTime)){
				tip("请选择日期！","warn");
				return;
			}
			var params = {
				"courseName":courseName,
				"teacher":teacher,
				"credit":credit/* ,
				"startTime":startTime,
				"endTime":endTime */
			};
			alert(JSON.stringify(params));
			$.ajax({
				type:"post",
				url:adminPath+"/choose/course",
				data:params,
				success:function(data){
					if(data=="success"){
						window.location = adminPath+"/choose/list";
					}else{
						tip("保存失败！","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
