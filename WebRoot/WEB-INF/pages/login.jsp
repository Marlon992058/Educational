<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/taglib.jsp" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>后台登录界面——Marlon</title>
  <link rel="stylesheet" href="${basePath}/resources/css/login.css" />
  <%@include file="common/common.jsp" %>
 </head>
 <body>
	<div id="loginbox">
		<div class="normal_text"> <h3><img src="${basePath}/resources/images/logo1.png" alt="Logo">管理后台</h3></div>
		<div class="control-group">
			<div class="controls">
				<div class="main_input_box">
					<span class="add-on bg_lg"><i class="iconfont icon-yonghu"></i></span><input type="text" value="marlon" id="account" name="account" placeholder="请输入账号...">
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<div class="main_input_box">
					<span class="add-on bg_ly"><i class="iconfont icon-mima"></i></span><input type="password" value="123456" id="password" name="password" placeholder="请输入密码...">
				</div>
			</div>
		</div>
		<div class="form-actions">
			<span><a href="javascript:void(0);" onclick="login();" class="btn btn-success">登陆</a></span>
		</div>
	</div>

	<script type="text/javascript">
		$(function(){
	 		//按下Enter建触发登陆按钮
	 		$(document).keydown(function(e){
	 			if(e.keyCode==13){
	 				login();
	 			}
	 		});
	 	});
		
		function login(){
			var account = $("#account").val();
			var password = $("#password").val();
			if(isEmpty(account)){
				tip("请输入帐号。。。","warn");
				$("#account").focus();
			}
			if(isEmpty(password)){
				tip("请输入密码。。。","warn");
				$("#password").focus();
			}
			$.ajax({
				type:"post",
				url:basePath+"/logined",
				data:{"account":account,"password":password},
				success:function(data){
					if(data=="success"){
						window.location = basePath + "/admin/index";
					}else{
						tip("登录失败！","warn");
						$("#account").select();
						$("#password").val("");
					}
				}
				
			});
		}
	</script>
 </body>
</html>
