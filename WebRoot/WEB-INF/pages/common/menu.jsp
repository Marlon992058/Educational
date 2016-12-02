<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="slider">
	<div class="logo">
		<a href="${basePath}/stage/index"><img src="${basePath}/resources/images/logo.png" width="220" height="78"/></a>
	</div>
	<div class="nav">
		<ul>
			<tz:if test="${SESSION_USER_ROLE==1}">
				<tz:then><input type="hidden" value="${SESSION_USER_ID}" id="userId"/>
					 <li class="items"><a href="${adminPath}/user/list"><i class="fa fa-film"></i>学生信息</a></li>
					 <li class="items"><a href="${adminPath}/course/list"><i class="fa fa-film"></i>课程管理</a></li>
					 <li class="items"><a href="${adminPath}/choose/list"><i class="fa fa-list"></i>选修管理</a></li>
					 <li class="items"><a href="${adminPath}/grade/list"><i class="fa fa-list"></i>学生成绩</a></li>
					 <li class="items"><a href="${adminPath}/user/echarts"><i class="fa fa-th-list"></i>选课报表</a></li>
				</tz:then>
				<tz:else>
					 <li class="items"><a href="${adminPath}/choose/list"><i class="fa fa-list"></i>我要选课</a></li>
					 <li class="items"><a href="${adminPath}/choose/select"><i class="fa fa-list"></i>查看选课</a></li>
					 <li class="items"><a href="${adminPath}/grade/list"><i class="fa fa-list"></i>学生成绩</a></li>
				</tz:else>
			</tz:if>
			<li class="items"><a href="javascript:void(0);"><i class="fa fa-pencil"></i>元素</a></li>
			<li class="items"><a href="javascript:void(0);"><i class="fa fa-file-o"></i>Error</a></li>
			<li class="items"><a href="javascript:void(0);"><i class="fa fa-send"></i>未知</a></li>
			<li class="items"><a href="javascript:void(0);"><i class="fa fa-star"></i>未知</a></li>
		</ul>
	</div>
</div>
