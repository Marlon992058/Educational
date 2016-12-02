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
						学生成绩详细列表</caption>
					<thead>
						<tr id="title">
							<th>排名</th>
							<th>姓名</th>
							<th>数学</th>
							<th>英语</th>
							<th>语文</th>
							<th colspan="2">选修课</th>
							<th>总成绩</th>
							<!-- <th>操作</th> -->
						</tr>
					</thead>
					<tbody id="tmblog">
						<c:forEach var="user" varStatus="userindex" items="${courses}">
							<tr data-uid="${user.uId}" data-opid="${user.id}" id="user_${user.id}">
								<td>${userindex.index+1}</td>
								<td>${user.username}</td>
								<td>${user.math}</td>
								<td>${user.english}</td>
								<td>${user.chinese}</td>
								<td>${user.courseName}</td>
								<td>${user.cGrade}</td>
								<td>${user.score}</td>
								<%-- <td><a href="javacript:void(0)" onclick="updateCourse('user_${user.id}')">修改</a><a href="javascript:void(0)" data-opid="${user.id}" class="tm-del" onclick="tmOption.del(this)">删除</a></td> --%>
							</tr>
						</c:forEach>
						<tr data-uid="${user.uId}" data-opid="${user.id}">
							<td colspan="2" style="text-align:center">各门课程平均分数</td>
							<td>${avgs.math}</td>
							<td>${avgs.english}</td>
							<td>${avgs.chinese}</td>
							<td rowspan="2">选修课平均分数</td>
							<td rowspan="2">${avgs.cGrade}</td>
							<td></td>
						</tr>
						<tr data-uid="${user.uId}" data-opid="${user.id}">
							<td colspan="2" style="text-align:center">百分比(及格人数)</td>
							<td>${percent.math}%</td>
							<td>${percent.english}%</td>
							<td>${percent.chinese}%</td>
							<!-- <td>选修课百分比</td>
							<td></td> -->
							<td></td>
						</tr>
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
