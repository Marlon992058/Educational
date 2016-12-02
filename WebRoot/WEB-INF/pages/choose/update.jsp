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
						更新课程信息</caption>
					<tbody id="tmblog">
						<tr>
							<td class="add-fr">课程名称：</td>
							<td class="add-fl"><input type="text" name="courseName" id="courseName" value="${course.courseName}"/></td>
						</tr>
						<tr>
							<td class="add-fr">老师：</td>
							<td class="add-fl"><input type="text" name="teacher" id="teacher" value="${course.teacher}"/></td>
						</tr>
						<tr>
							<td class="add-fr">学分：</td>
							<td class="add-fl"><input type="text" name="credit" id="credit" value="${course.credit}"/></td>
						</tr>
						<tr>
							<td class="add-fr">开课时间：</td>
							<td class="add-fl"><label for="startTime"><input type="datetime" id="startTime" name="startTime" value="${tz:formatDate(course.startTime,'yyyy-MM-dd')}"/></label></td>
						</tr>
						<tr>
							<td class="add-fr">结课时间：</td>
							<td class="add-fl"><label for="endTime"><input type="datetime" id="endTime" name="endTime" value="${tz:formatDate(course.endTime,'yyyy-MM-dd')}"/></label></td>
						</tr>
						<tr>
							<td class="add-fc" colspan="2"><a href="javascript:void(0)" onclick="update(${course.id})">更新</a></td>
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
		function update(obj){
			var id = obj;
			var courseName = $("#courseName").val();
			var teacher = $("#teacher").val();
			var credit = $("#credit").val();
			var startTime = $("#startTime").val();
			var endTime = $("#endTime").val();
			var params = {
				id : id,
				courseName : courseName,
				teacher : teacher,
				credit : credit/* ,
				startTime : startTime,
				endTime : endTime */
			};
			$.ajax({
				type:"post",
				url:adminPath+"/choose/updatecourse",
				data:params,
				success:function(data){
					if(data=="success"){
						window.location = adminPath+"/choose/list";
					}else{
						tip("更新失败！","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
