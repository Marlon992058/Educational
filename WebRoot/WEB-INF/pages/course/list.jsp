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
						课程信息列表</caption>
					<thead>
						<tr id="title">
							<th>ID</th>
							<th>课程名称</th>
							<th>老师</th>
							<th>学分</th>
							<th>是否发布</th>
							<th>是否存在</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tmblog">
						<c:forEach var="course" varStatus="courseindex" items="${courses}">
							<tr>
								<td>${course.cId}</td>
								<td>${course.cName}</td>
								<td>${course.teacher}</td>
								<td>${course.credit}</td>
								<td>
									<tz:if test="${course.isDelete==1}">
										<tz:then><a href="javascript:void(0)" opid="${course.id}" mark="isDelete" val="0" onclick="tzAdmin.op(this);" class="green">是</a></tz:then>
										<tz:else><a href="javascript:void(0)" opid="${course.id}" mark="isDelete" val="1" onclick="tzAdmin.op(this);" class="red">否</a></tz:else>
									</tz:if>
								</td>
								<td>
									<tz:if test="${course.status==1}">
										<tz:then><a href="javascript:void(0)" opid="${course.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></tz:then>
										<tz:else><a href="javascript:void(0)" opid="${course.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></tz:else>
									</tz:if>
								</td>
								<td>${tz:formatDate(course.createTime,'yyyy-MM-dd HH:mm:ss')}</td>
								<td><a href="${basePath}/course/add">添加</a><a href="${basePath}/course/update/${course.id}">修改</a><a href="javascript:void(0)" data-opid="${course.id}" class="tm-del" onclick="del(this)">删除</a></td>
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
		function del(obj){
			var id = $(obj).data("opid");
			$.ajax({
				type:"post",
				url:adminPath + "/course/del",
				data:{"id":id},
				success:function(data){
					if(data=="success"){
						$(obj).parents("tr").remove().fadeOut("slow");
						//window.location = basePath + "/course/list";
					}else{
						tip("删除失败","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
