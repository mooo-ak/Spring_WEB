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
	  <div class="row ">
	    <div class="col-sm-8 aboutSection">
        <div class="aboutMeTable">
          <h2 class="aboutMe">About Me</h2>	      
        </div>
	    <div class="aboutbody">
	    <div>
	      <img class="profileImg" alt="메인사진.jpg" src="./img/메인사진.jpg">
	    </div>
	    
        <div class="aboutContent">
        	<div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/user.png"></div>    
      		<div>
      			<div class="aboutTitle">이름</div>
      			<div class="aboutDesc">김지아</div>      		
      	    </div>
      	    </div>
      	    </div>
      		<div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/calendar.png"></div>    
      		<div>
      			<div class="aboutTitle">생년월일</div>
      			<div class="aboutDesc">1991.08.12.</div>      		
      	    </div>
      	    </div>
      	    </div>
      	    <div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/pin.png"></div>    
      		<div>
      			<div class="aboutTitle">주소지</div>
      			<div class="aboutDesc">서울특별시 금천구</div>      		
      	    </div>
      	    </div>
      	    </div>
      	    <div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/phone.png"></div>    
      		<div>
      			<div class="aboutTitle">연락처</div>
      			<div class="aboutDesc">010-3224-3677</div>      		
      	    </div>
      	    </div>
      	    </div>
      	    <div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/mail.png"></div>    
      		<div>
      			<div class="aboutTitle">이메일</div>
      			<div class="aboutDesc">mooo.ak910@gmail.com</div>      		
      	    </div>
      	    </div>
      	    </div>
      	    <div class="aboutContent-wrap">
        	<div class="contentDiv">
        	<div class="aboutImg"><img src="./img/about/github.png"></div>    
      		<div>
      			<div class="aboutTitle">GitHub</div>
      			<div class="aboutDesc"><a href="https://github.com/mooo-ak">GitHub로 이동</a></div>      		
      	    </div>
      	    </div>
      	    </div>     	    
        </div>
	    </div>  
	    </div>
	  </div>
	</div>

	<!-- Skill Section -->
	<div id="skill" class="container-fluid bg-grey">
	  <div class="text-center">
	    <h2 class="skill_title">Skills & Tools</h2>
	    <h4>I selected and used technical skills</h4>
	  </div>
	  <div class="row slideanim">
	    <div class="col-sm-4 col-xs-12">
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
	  <!-- section_01 -->
	  <div class="row text-center slideanim cardrow">
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>일정관리 캘린더</strong></p>
			       <p>로그인한 사용자의 일정관리를 도울 수 있는 캘린더 기능입니다.</p>
			       <p class="hashtag">#조건부 렌더링 #공휴일 #동적 캘린더 UI #사용자 친화적 인터페이스</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>I learned it</strong></p>
		       <p></p>
		    </div>
	      </div>
	    </div>
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>자유게시판</strong></p>
			       <p>로그인 유무없이 모든 유저가 소통할 수 있는 게시판 기능입니다.</p>
			       <p class="hashtag">#조건부 렌더링 #게시글 작성 #파일업로드 #Pagination</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>상세설명입니다</strong></p>
		       <p>프로젝트 1 설명글 입니다</p>
		       <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
		    </div>
	      </div>
	    </div>
	  </div><br>
	  <!-- section_02 -->
	  <div class="row text-center slideanim cardrow">
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>자기소개 웹페이지</strong></p>
			       <p>포트폴리오 용도로서 제작한 웹사이트입니다.</p>
			       <p class="hashtag">#자기소개 #기술스택 #프로젝트 #신입개발자 #기능구현</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>상세설명입니다</strong></p>
		       <p>프로젝트 1 설명글 입니다</p>
		       <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
		    </div>
	      </div>
	    </div>
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	    		<div class="thumbnail_content">
			       <p><strong>메일링 서비스</strong></p>
			       <p>웹페이지 내 소통을 위해 추가한 메일링 기능입니다.</p>
			       <p class="hashtag">#Javax-mail #Google #SMTP #Email 송수신</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>상세설명입니다</strong></p>
		       <p>프로젝트 1 설명글 입니다</p>
		       <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
		    </div>
	      </div>
	    </div>
	  </div><br>
	  <!-- section_03 -->
	  <div class="row text-center slideanim cardrow">
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
	    	   <div class="thumbnail_content">
			       <p><strong>마춤뻡 테스트</strong></p>
			       <p>맞춤법을 자주 틀리는 친구를 위해 개발한 테스트입니다.</p>
			       <p class="hashtag">#배포경험 #Javascript #친구야 #좋아해</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>상세설명입니다</strong></p>
		       <p>프로젝트 1 설명글 입니다</p>
		       <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
		    </div>
	      </div>
	    </div>
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>HCM 그룹웨어</strong></p>
			       <p>업무효율 증대를 목표로 개발한 사내 그룹웨어 서비스입니다.</p>
			       <p class="hashtag">#협업프로젝트 #6인개발자 #문서관리자 #실무문서 작성</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p><strong>상세설명입니다</strong></p>
		       <p>프로젝트 1 설명글 입니다</p>
		       <button class="btn btn-default btn-lg" style="margin: 5px; font-weight: bold;">Click</button>
		    </div>
	      </div>
	    </div>
	  </div><br>

	 </div>
	 
	
	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
	  <h2 class="text-center">CONTACT</h2>
	  <div class="row">
	    <div class="col-sm-5">
	      <p><strong>똑똑. 함께 일할 사람 찾고 계신가요?!</strong></p>
	      <p>함께 일할 멋진 일에 대한 제안을 보내주시면 <br>
	      	 1~2일내로 회신 드리겠습니다 :) </p>
<!-- 	      <p><span class="glyphicon glyphicon-map-marker"></span> 서울특별시 금천구</p> -->
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