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
						添加学籍信息</caption>
					<tbody id="tmblog">
						<tr>
							<td class="add-fr">姓名：</td>
							<td class="add-fl"><input type="text" name="username" id="username"/></td>
						</tr>
						<tr>
							<td class="add-fr">年龄：</td>
							<td class="add-fl"><input type="text" name="age" id="age"/></td>
						</tr>
						<tr>
							<td class="add-fr">性别：</td>
							<td class="add-fl" id="sex">
							<label><input type="radio" value="1" name="sex"/>男</label>
							<label><input type="radio" value="0" name="sex"/>女</label>
							<label><input type="radio" value="2" name="sex"/>保密</label>
							</td>
						</tr>
						<tr>
							<td class="add-fr">出生日期：</td>
							<td class="add-fl"><input type="text" name="birthday" id="birthday"/></td>
						</tr>
						<tr>
							<td class="add-fc" colspan="2"><a href="javascript:void(0)" onclick="tmOption.add()">添加</a></td>
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
