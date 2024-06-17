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
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="./getCalendar.do">캘린더</a></li>
        <li><a href="./getBoard.do">CONTACT</a></li>
        
        <!-- 로그인 유무에 따른 header 변경 시작-->
        <c:choose>
	        <c:when test="${sessionScope.loginInfo != null}">
	            <li><a href="./logout.do">로그아웃</a></li>
	        </c:when>
	        <c:otherwise>
	            <li><a href="./loginForm.do">로그인</a></li>
	        </c:otherwise>
        </c:choose>
        <!-- 로그인 유무에 따른 header 변경 종료-->
      </ul>
    </div>
  </div>
</nav>
</body>
</html>