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
							<th>姓名</th>
							<th>数学</th>
							<th>英语</th>
							<th>语文</th>
							<th colspan="2">选修课</th>
							<th>总成绩</th>
						</tr>
					</thead>
					<tbody id="tmblog">
						<c:forEach var="grade" varStatus="gradeindex" items="${grades}">
							<tr>
								<td>${gradeindex.index+1}</td>
								<td>${grade.username}</td>
								<td>${grade.math}</td>
								<td>${grade.english}</td>
								<td>${grade.chinese}</td>
								<td>${grade.courseName}</td>
								<td>${grade.cGrade}</td>
								<td>${grade.score}</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="2" style="text-align:center">各门课程平均分数</td>
							<td>${avgs.math}</td>
							<td>${avgs.english}</td>
							<td>${avgs.chinese}</td>
							<td rowspan="2">选修课平均分数</td>
							<td rowspan="2">${avgs.cGrade}</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align:center">百分比(及格人数)</td>
							<td>${percent.math}%</td>
							<td>${percent.english}%</td>
							<td>${percent.chinese}%</td>
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
