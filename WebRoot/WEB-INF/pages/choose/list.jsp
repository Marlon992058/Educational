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
					<caption
						style="text-align:center;padding:8px;font-weight:700;font-size:18px;">
						学生选课列表列表</caption>
					<thead>
						<tr id="title">
							<th>ID</th>
							<th>课程名称</th>
							<th>代课老师</th>
							<th>学分</th>
							<th>开课时间</th>
							<th>结课时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tmblog">
						<c:forEach var="course" varStatus="courseindex" items="${courses}">
							<tr>
								<td><input type="checkbox" value="${course.id}"/></td>
								<td>${course.courseName}</td>
								<td>${course.teacher}</td>
								<td>${course.credit}</td>
								<td>${tz:formatDate(course.startTime,'yyyy-MM-dd HH:mm:ss')}</td>
								<td>${tz:formatDate(course.endTime,'yyyy-MM-dd HH:mm:ss')}</td>
								<td>
									<tz:if test="${SESSION_USER_ROLE==1}">
										<tz:then>
											<a href="${basePath}/choose/add">添加</a><a href="${basePath}/choose/update/${course.id}">修改</a><a href="javascript:void(0)" data-opid="${course.id}" class="tm-del" onclick="del(this)">删除</a></td>
										</tz:then>
										<tz:else>
											<a href="javascript:void(0)" onclick="submit(${course.id})">提交</a></td>
										</tz:else>
									</tz:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="tmpage"></div>
			</div>
			<div class="clearfix"></div>
			<!-- end 内容区 -->
		</div>
	</div>
	<script>
		function submit(obj){
			var id = ${SESSION_USER_ID};
			$.ajax({
				type:"post",
				url:adminPath + "/choose/save",
				data:{cId:obj,id:id},
				success:function(data){
					if(data=="success"){
						tip("选课成功！","success");
					}else{
						tip("选课失败","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
