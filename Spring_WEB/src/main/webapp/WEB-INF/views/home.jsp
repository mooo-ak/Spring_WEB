<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/homepage.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<%@include file="/WEB-INF/views/menu/header.jsp"%>

<!-- 	<div class="jumbotron text-center"> -->
<!-- 	  <h1 style="margin-top: 70px;">Company</h1>  -->
<!-- 	  <p>We specialize in blablabla</p>  -->
<!-- 	  <form> -->
<!-- 	    <div class="input-group"> -->
<!-- 	      <input type="email" class="form-control" size="50" placeholder="Email Address" required> -->
<!-- 	      <div class="input-group-btn"> -->
<!-- 	        <button type="button" class="btn btn-danger">Subscribe</button> -->
<!-- 	      </div> -->
<!-- 	    </div> -->
<!-- 	  </form> -->
<!-- 	</div> -->
	
	<!-- Container (About Section) -->
	<div id="about" class="container-fluid">
	  <div class="row">
	    <div class="col-sm-8">
	      <h2>About Me</h2><br>
	      <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	      <br><button class="btn btn-default btn-lg">Get in Touch</button>
	    </div>
	    <div class="col-sm-4">
	      <span class="glyphicon glyphicon-signal logo"></span>
	    </div>
	  </div>
	</div>
	
<!-- 	<div class="container-fluid bg-grey"> -->
<!-- 	  <div class="row"> -->
<!-- 	    <div class="col-sm-4"> -->
<!-- 	      <span class="glyphicon glyphicon-globe logo slideanim"></span> -->
<!-- 	    </div> -->
<!-- 	    <div class="col-sm-8"> -->
<!-- 	      <h2>Our Values</h2><br> -->
<!-- 	      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br> -->
<!-- 	      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. -->
<!-- 	      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
<!-- 	    </div> -->
<!-- 	  </div> -->
<!-- 	</div> -->
	
	
		<!-- Skill Section -->
	<div id="skill" class="container-fluid bg-grey">
	  <div class="text-center">
	    <h2 class="skill_title">Skill</h2>
	    <h4>I selected and used technical skills</h4>
	  </div>
	  <div class="row slideanim">
	    <div class="col-sm-4 col-xs-12"">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Frontend</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="./img/skills/frontend.png" alt="">
	        </div>
	      </div>      
	    </div><div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Framework</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="./img/skills/framework.png" alt="">
	        </div>
	      </div>      
	    </div><div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Development</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="./img/skills/development.png" alt="">
	        </div>
	      </div>      
	    </div>         
	  </div>
	  <div class="row slideanim">
	  	<div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Backend</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="./img/skills/backend.png" alt="">
	        </div>
	      </div>      
	    </div><div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Deployment</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="/images/skills/frontend.png" alt="">
	        </div>
	      </div>      
	    </div><div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="skills_tech">
	          <div class="skill_title_text">Middleware/Test</div>
	        </div>
	        <div class="panel-body">
			  <img class="skills_img" src="./img/skills/middleware.png" alt="">
	        </div>
	      </div>      
	    </div>
	  </div>
	</div>
	
	<!-- project Section -->
	<div id="project" class="container-fluid text-center">
	  <h2>Project</h2><br>
	  <h4>What I have created</h4>
	  <div class="row text-center slideanim">
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>게시판 기능 구현</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>일정 관리 캘린더</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	  </div><br>
	  
	  <div class="row text-center slideanim">
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>자기소개 웹사이트</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>메일 기능구현</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	  </div><br>
	  
	  	  <div class="row text-center slideanim">
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>마춤뻡 테스트</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	    <div class="col-sm-6">
	      <div class="thumbnail">
	        <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	        <p><strong>HCM 그룹웨어</strong></p>
	        <p>프로젝트 1 설명글 입니다</p>
	        <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
	      </div>
	    </div>
	  </div><br>
	 </div>
	 
	
	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
	  <h2 class="text-center">CONTACT</h2>
	  <div class="row">
	    <div class="col-sm-5">
	      <p>Contact me and I'll get back to you within 24 hours.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> 서울특별시 금천구</p>
<!-- 	      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p> -->
	      <p><span class="glyphicon glyphicon-envelope"></span> mooo.ak910@gmail.com</p>
	    </div>
	    <div class="col-sm-7 slideanim">
	    <form id="emailForm" action="./sendEmail.do" method="post">
	      <div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="email_name" name="name" placeholder="Name" type="text" required>
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="email_address" name="emailaddress" placeholder="Your Email" type="email" required>
	        </div>
	      </div>
	      <div style="margin-bottom: 12px;">
	      	<input class="form-control" id="email_title" name="title" placeholder="Title" type="text" required>
	      </div>
	      <textarea class="form-control" id="email_content" name="content" placeholder="Comment" rows="5"></textarea><br>
	      <div class="row">
	        <div class="col-sm-12 form-group">
	          <button class="btn btn-default pull-right sendEmail" type="button">Send</button>
	        </div>
	      </div>
	     </form>
	    </div>
	  </div>
	</div>
	
	<%@include file="/WEB-INF/views/menu/footer.jsp" %>

</body>
<script type="text/javascript" src="./js/sendmail.js"></script>

</html>