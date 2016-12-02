<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="header">
	<ul class="fl">
		<li class="titems"><a href="javascript:void(0);"><i class="fa fa-user"></i>欢迎<b style="color:red;padding:0px 5px;font-size:16px">${SESSION_USER_NAME}</b>
		<tz:if test="${SESSION_USER_ROLE==1}">
			<tz:then>老师</tz:then>
			<tz:else>学生</tz:else>
		</tz:if>登录选课管理系统</a></li>
		<li class="titems"><a href="javascript:void(0);"><i class="fa fa-envelope"></i>消息5个!</a></li>
		<li class="titems"><a href="javascript:void(0);"><i class="fa fa-cog"></i>设置</a></li>
		<li class="titems"><a href="${basePath}/loginout"><i class="fa fa-share-alt"></i>退出</a></li>	
	</ul>
</div>