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
					<caption style="text-align:center;padding:8px;font-weight:700;font-size:18px;">成绩更新列表</caption>
					<tbody id="tmblog">
						<tr>
							<td class="add-fr">姓名：</td>
							<td class="add-fl"><input type="text" value="${map.username}" name="username" id="username"/></td>
						</tr>
						<tr>
							<td class="add-fr">数学：</td>
							<td class="add-fl"><input type="text" value="${map.math}" name="age" id="age"/></td>
						</tr>
						<tr>
							<td class="add-fr">英语：</td>
							<td class="add-fl"><input type="text" value="${map.english}" name="age" id="age"/></td>
						</tr>
						<tr>
							<td class="add-fr">语文：</td>
							<td class="add-fl"><input type="text" value="${map.chinese}" name="age" id="age"/></td>
						</tr>
						<tr>
							<td class="add-fr">${map.courseName}(选)：</td>
							<td class="add-fl"><input type="text" value="${map.cGrade}" name="age" id="age"/></td>
						</tr>
						<tr>
							<td class="add-fc" colspan="2"><a href="javascript:void(0)" onclick="update()">更新</a></td>
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
		
	</script>
</body>
</html>
