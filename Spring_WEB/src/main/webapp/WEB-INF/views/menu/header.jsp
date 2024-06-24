<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="./">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#skill">SKILL</a></li>
        <li><a href="#project">PROJECT</a></li>
        <li><a href="./getCalendar.do">CALENDAR</a></li>
        <li><a href="./paging.do">BOARD</a></li>
<!--         <li><a href="./getBoardList.do">게시판</a></li> -->
        
        <!-- 로그인 유무에 따른 header 변경 시작-->
        <c:choose>
	        <c:when test="${sessionScope.loginInfo != null}">
	            <li><a href="./logout.do">LOGOUT</a></li>
	            <li><input type="hidden" id="userID" value="${loginInfo.user_id}"></li>
	            <li><input type="hidden" value="${loginInfo.password}"></li>
	            <li><input type="hidden" value="${loginInfo.username}"></li>
	            <li><input type="hidden" value="${loginInfo.nickname}"></li>
	            <li><input type="hidden" value="${loginInfo.useremail}"></li>
	            <li><input type="hidden" value="${loginInfo.userphone}"></li>
	            <li><input type="hidden" value="${loginInfo.signup_date}"></li>
	            <li><input type="hidden" value="${loginInfo.auth}"></li>
	            <li><input type="hidden" value="${loginInfo.dropout}"></li>
	        </c:when>
	        <c:otherwise>
	            <li><a href="./loginForm.do">LOGIN</a></li>
	        </c:otherwise>
        </c:choose>
        <!-- 로그인 유무에 따른 header 변경 종료-->
      </ul>
    </div>
  </div>
</nav>
</body>
</html>