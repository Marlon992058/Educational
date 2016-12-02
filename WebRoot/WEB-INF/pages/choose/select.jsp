<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>模版页面——Marlon</title>
	<style type="text/css">
		td input{border:0px;}
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
				<table class="tm_table">
					<caption style="text-align:center;padding:8px;font-weight:700;font-size:18px;"></caption>
					<thead>
						<tr id="title">
							<th>ID</th>
							<th>课程名称</th>
							<th>代课老师</th>
							<th>学分</th>
							<th>开课时间</th>
							<th>结课时间</th>
							<th>退选</th>
						</tr>
					</thead>
					<tbody id="tmblog">
						<tr>
							<td>${course.id}</td>
							<td>${course.courseName}</td>
							<td>${course.teacher}</td>
							<td>${course.credit}</td>
							<td>${tz:formatDate(course.startTime,'yyyy-MM-dd HH:mm:ss')}</td>
							<td>${tz:formatDate(course.endTime,'yyyy-MM-dd HH:mm:ss')}</td>
							<td><a href="javascript:void(0)" onclick="drop()">退选</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="clearfix"></div>
			<!-- end 内容区 -->
		</div>
	</div>
	<script type="text/javascript">
		function drop(){
			var id = ${SESSION_USER_ID};
			$.ajax({
				type:"post",
				url:adminPath + "/choose/save",
				data:{cId:" ",id:id},
				success:function(data){
					if(data=="success"){
						tip("退选成功！","success");
					}else{
						tip("退选失败","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
