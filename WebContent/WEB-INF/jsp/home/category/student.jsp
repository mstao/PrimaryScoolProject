<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="CTP" value="${pageContext.request.contextPath}"></c:set>
<c:set var="CTP_HOME" value="${pageContext.request.contextPath}/resources/home"></c:set>
<title>${SCHOOL_STUDENT}</title>
<link rel="stylesheet" href="${CTP_HOME}/css/header.css" />
<link rel="stylesheet" href="${CTP_HOME}/css/footer.css" />
<link rel="stylesheet" href="${CTP_HOME}/css/alldetails.css"/>
<script type="text/javascript" src="${CTP_HOME}/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${CTP_HOME}/js/module/common.js" ></script>
<script type="text/javascript" src="${CTP_HOME}/js/extends/YuxiSlider.jQuery.min.js"></script>

</head>
<body>
<%--引入header --%>

<jsp:include page="../common/header.jsp"></jsp:include>

<%--S 主体 --%>
<div class="content-wrapper">
	<img src="${CTP_HOME}/img/school-f.jpg" />
	<span>${SCHOOL_STUDENT}</span>
</div>
<div class="content-location">
<img src="${CTP_HOME}/img/home.png"/><span> 您现在的位置: <a href="#">万科城小学</a> > <a href="#">${SCHOOL_STUDENT}</a></span>
</div>
<div class="content-bottom">

	
	<div class="top-contaner-left">	
	<!-- 校园动态-->
	<div class="top-left">
		<div class="top-left-bottom"><b>${SCHOOL_STUDENT}</b><img src="${CTP_HOME}/img/jiantou.png"/></div>
		<ul>
			 <li><a href="${pageContext.request.contextPath}/list/student?flag=book&p=1">${SCHOOL_STUDENT_BOOK}</a></li>
			 <li><a href="${pageContext.request.contextPath}/list/student?flag=activity&p=1">${SCHOOL_STUDENT_BOOK}</a></li>
			 <li><a href="${pageContext.request.contextPath}/list/class">${SCHOLL_STUDENT_CLASS}</a></li>
			 <li><a href="${pageContext.request.contextPath}/list/student?flag=lab&p=1">${SCHOOL_STUDENT_LAB}</a></li>
		
		</ul>
	</div>
	<!--作息表-->
	<div class="bottom-left">
		<div class="top-left-bottom"><b>万科小学作息时间表</b><img src="${CTP_HOME}/img/jiantou.png"/></div>
		<ul>
			<li><img src="${CTP_HOME}/img/sjiantou.png"/><a href="#"> 春期作息时间表</a></li>
			<li><img src="${CTP_HOME}/img/sjiantou.png"/><a href="#"> 秋期作息时间表</a></li>
		</ul>
	</div>
		
 </div>	
	
<div class="top-contaner-right clearfix">
	<!--图片新闻-->
	<div class="top-center">
		
		 <!--S 轮播图-->
			<div class="slider-news">
			<ul>
		     
				<li class="slider-li"><a href="" target="_blank" ><img src="${CTP_HOME}/slider/images/nemo.jpg" alt="aaaaaa"  /></a></li>
			    <li class="slider-li"><a href="" target="_blank" ><img src="${CTP_HOME}/slider/images/toystory.jpg" alt="aaaaaa"  /></a></li>
		   	
			</ul>
		    </div>
		  
			<!--E 轮播图-->
	</div>
	<!--热门排行-->
	<div class="float-div right">
		<div class="top-left-bottom"><b>${SCHOOL_STUDENT_BOOK}</b> <img src="${CTP_HOME}/img/jiantou.png"/><span><a href="#">更多>></a></span></div>
		<ul>
		
		  <c:forEach items="${book}" var="book_list">
			<li><img src="${CTP_HOME}/img/sjiantou.png"/><a href="${CTP}/details/student?id=${book_list.id}&flag=${bookFlag}"> ${book_list.itemTitle}</a><span>[${book_list.addTime}]</span></li>
		  </c:forEach>
		</ul>
		<c:if test="${empty book}">
		  <div class='no-message'><img src='${CTP_HOME}/img/nomessage.png' /></div>
		</c:if>
	</div>
	
          <div class="clear"></div>
	<!--活动风采-->
	<div class="float-div">
		<div class="top-left-bottom"><b>${SCHOOL_STUDENT_ACTIVITY}</b><img src="${CTP_HOME}/img/jiantou.png"/> <span><a href="#">更多>></a></span></div>
		<ul>
		  <c:forEach  items="${activity}" var="activity_list">
			<li><img src="${CTP}/img/sjiantou.png"/><a href="${CTP}/details/student?id=${activity_list.id}&flag=${activityFlag}"> ${activity_list.itemTitle}</a><span>[${activity_list.addTime}]</span></li>
		  </c:forEach>
		</ul>
		<c:if test="${empty activity}">
		  <div class='no-message'><img src='${CTP_HOME}/img/nomessage.png' /></div>
		</c:if>
	</div>
	
	<div class="float-div right">
		<div class="top-left-bottom"><b>${SCHOOL_STUDENT_LAB}</b><img src="${CTP_HOME}/img/jiantou.png"/> <span><a href="#">更多>></a></span></div>
		<ul>
		  <c:forEach items="${lab}" var="lab_list">
			<li><img src="${CTP}/img/sjiantou.png"/><a href="${CTP}/details/student?id=${lab_list.id}&flag=${labFlag}"> ${lab_list.itemTitle}</a><span>[${lab_list.addTime}]</span></li>
		  </c:forEach>
		</ul>
		<c:if test="${empty lab}">
		 <div class='no-message'><img src='${CTP_HOME}/img/nomessage.png' /></div>
		</c:if>
	</div>
	
	
	
      </div>


</div>
	

<div class="clear"></div>
<%--E 主体 --%>


<%--引入footer --%>
<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>
<script type="text/javascript">
	$(function(){
		 //轮播
	    $(".slider-news").YuxiSlider({
			width:420, //容器宽度
			height:300, //容器高度
			during:3000, //间隔3秒自动滑动
			speed:800, //移动速度0.8秒
			mousewheel:true, //是否开启鼠标滚轮控制
			direkey:false//是否开启左右箭头方向控制
		});
	});
		
</script>