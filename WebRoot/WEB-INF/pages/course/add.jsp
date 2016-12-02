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
						添加课程信息</caption>
					<tbody id="tmblog">
						<tr>
							<td class="add-fr">课程名称：</td>
							<td class="add-fl"><input type="text" name="c_name" id="c_name"/></td>
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
		function add(){
			var cName = $("#c_name").val();
			var teacher = $("#teacher").val();
			var credit = $("#credit").val();
			if(isEmpty(cName)){
				tip("该选项是必填项！","warn");
				$("#c_name").focus();
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
			var params = {
				cName : cName,
				teacher : teacher,
				credit : credit
			};
			$.ajax({
				type:"post",
				url:adminPath+"/course/addcourse",
				data:params,
				success:function(data){
					if(data=="success"){
						window.location = "list";
					}else{
						tip("保存失败！","warn");
					}
				}
			});
		}
	</script>
</body>
</html>
