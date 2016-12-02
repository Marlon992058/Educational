<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>模版页面——Marlon</title>
	<style type="text/css">
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
						学生学籍信息列表</caption>
					<thead>
						<tr>
							<th>ID</th>
							<th>姓名</th>
							<th>年龄</th>
							<th>性别</th>
							<th>学号</th>
							<th>出生日期</th>
							<th>入学时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tmblog">
						<c:forEach var="user" varStatus="userindex" items="${users}">
							<tr data-uid="${user.uId}" data-opid="${user.id}" id="user_${user.id}">
								<td>${user.id}</td>
								<td>${user.username}</td>
								<td>${user.age}</td>
								<td>
									<c:choose>
										<c:when test="${user.sex==1}">男</c:when>
										<c:when test="${user.sex==0}">女</c:when>
										<c:otherwise>保密</c:otherwise>
									</c:choose>
								</td>
								<td>${user.uId}</td>
								<td>${user.birthday}</td>
								<td>${user.joinTime}</td>
								<td><a href="${basePath}/user/add">添加</a><a href="${basePath}/user/update/${user.id}">修改</a><a href="javascript:void(0)" data-opid="${user.id}" class="tm-del" onclick="tmOption.del(this)">删除</a></td>
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
</body>
</html>
