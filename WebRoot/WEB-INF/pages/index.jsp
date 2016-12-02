<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>模版页面——Marlon</title>
	<style type="text/css">
		#box{margin:20% 0px 0px 30%;font-size:22px;text-aligin:center;line-height:1.8}
	</style>
	<%@include file="common/common.jsp" %>
  </head>
<body style="background:url('${basePath}/resources/images/bg2.jpg')">
	<div class="wrap">
		<%@include file="/WEB-INF/pages/common/menu.jsp"%>
		<!-- 内容区 -->
		<div class="content">
			<%@include file="/WEB-INF/pages/common/header.jsp"%>
			<div class="wrapbox">
				<div id="box"></div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	var arr = new Array(
		"欢迎【${SESSION_USER_NAME}】访问我的网站！",
		"这里是我的后台首页。",
		"只能是管理员才能进入到这里，否则您已涉权。",
		"合法使用请联系：18719742536",
		"谢谢配合！");
	var speed = 150;
	var wordbox = document.getElementById("box");
	var c = "",index = 0,pos = 0;
	var strLen = arr[0].length;
	var tlen = arr.length; 
	var row = 0;
	function appendWord(){
		c='';
		row = Math.max(0,index-tlen);
		while(row < index){
	   		c += arr[row++] + '\r\n';
		}
		wordbox.innerText = c+arr[index].slice(0,pos)+"|"; 
		if(pos==strLen){
			pos = 0;
			c = arr[index]+"\r\n";
			index ++;			
			if(index < tlen){
				strLen = arr[index].length;
				setTimeout(appendWord,speed);
			}else{
				wordbox.innerText = wordbox.innerText.replace("|","");
			}
		}else{
			pos++;
			setTimeout(appendWord,speed);
		}
	}
	appendWord();
	</script>
 </body>
</html>