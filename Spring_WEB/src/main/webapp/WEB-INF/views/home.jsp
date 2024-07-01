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
<link rel="stylesheet" href="./css/media.css">
<!-- <link rel="stylesheet" href="./css/media2.css"> -->
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
	    <div class="col-sm-8 aboutSection">
        <div class="aboutMeTable">
          <h2 class="aboutMe">About Me</h2>	      
        </div>
	    <div class="aboutbody">
	    <div class="col-sm-6 text-center">
	      <img class="profileImg" alt="메인사진.jpg" src="./img/메인사진.jpg">
	    </div>
	    
        <div class="col-sm-6 aboutContent">
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
			  <img class="skills_img" src="./img/skills/deploy.png" alt="">
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
	  <div class="parent-cardrow">
	  <div class="row text-center slideanim cardrow">
	    <div class="card firstCard">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/calendar/calendar.png" alt="test">
		       <div class="thumbnail_content">
			       <p><strong>일정관리 캘린더</strong></p>
			       <p>로그인한 사용자의 일정관리를 도울 수 있는 캘린더 기능입니다.</p>
			       <p class="hashtag">#조건부 렌더링 #공휴일 #동적 캘린더 UI #사용자 친화적 인터페이스</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p>
			       <span class="emphasize">Full Calendar</span>와 
			       <span class="emphasize">Google Calendar</span> 연동 기능을 구현하고, 
			       <span class="emphasize">datetimepicker</span>를 통해 사용자 친화적 인터페이스를 <br>구축하였습니다.</p>
		       <p>국비지원 학원에서 팀 프로젝트를 진행할 당시, 
		       	   <span class="emphasize">기한 내에 기능 구현에 집중하느라 API 문서를 충분히 이해하고 활용하지 못한 아쉬움</span>이 남았습니다.
				  이러한 부족함을 보완하고자 개인 프로젝트를 진행하며 공식 API 문서를 참고하여 
				  <span class="emphasize">API를 제대로 활용하는 방법을 배우는 것을 목표</span>로 삼았습니다. 
				  블로그보다는 공식 문서를 주로 참고하며 API 메서드를 적용하려 노력했고, 
				  실제 데이터베이스에서 데이터를 프론트엔드로 가져오는 과정을 간소화하여 <span class="emphasize">코드의 가독성</span>을 높였습니다.
				</p>
				<p>이 과정을 통해 가독성 좋은 코드가 <span class="emphasize">유지보수가 더욱 용이</span>하다는 것을 체감할 수 있었습니다. 
				   이후 공식 문서를 빠르게 파악하고 적용하는 능력이 향상되어 다른 API를 적용하며 기능구현 시간을 단축할 수 있었습니다.
		        </p>
		       
		    </div>
	      </div>
	    </div>
	    <div class="card secondCard">
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
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p>
		       		사용자가 게시글과 함께 필요한 파일을 업로드하고,<br> 조회된 게시글에 포함된 첨부파일이 다운로드 될 수 있도록<br> 기능을 개발하였습니다. 
		       </p>
		       <p>
			       	파일업로드 구현시 <span class="emphasize">데이터를 저장하는 로컬 폴더를 만드는 부분에서 로직을 이해</span>하는데 초반에 어려움이 있었습니다.
					라이브러리 기능을 활용하여 로컬 내 데이터를 저장하는 폴더를 생성하는 기능을 제공하지만, 
					실제 서비스를 배포한다는 전제하에 개발자의 로컬 컴퓨터에 파일을 저장하는 것보다 
					<span class="emphasize">서버에서 관리하는 것이 보안상 더욱 이점</span>이 있다고 판단하였습니다. 
					폴더 생성 과정을 생략하는 대신 업로드된 파일에 대한 메타데이터(파일 이름, 저장 경로 등)는 데이터베이스에 저장하여 쉽게 관리할 수 있도록 하였습니다. 
		       </p>
		       <p>
		       		또한 파일업로드에 관련된 모든 작업은 <span class="emphasize">transaction</span>으로 묶어서 처리함으로써 
					데이터베이스와의 일관성을 유지하고 <span class="emphasize">데이터 손실을 방지</span>하는데 포커싱 하였습니다.
		       </p>
		    </div>
	      </div>
	    </div>
	    </div>
	  </div><br>
	  <!-- section_02 -->
	  <div class="row text-center slideanim cardrow">
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/project/mypage.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>자기소개 웹페이지</strong></p>
			       <p>포트폴리오 용도로서 제작한 웹사이트입니다.</p>
			       <p class="hashtag">#자기소개 #기술스택 #프로젝트 #신입개발자 #기능구현</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p>
					이 웹페이지는 채용 담당자분들께 문서로만 드리는 인사보다, <br>
					<span class="emphasize">신입 개발자로서 필수적인 역량</span>을 직접 보고 판단하실 수 있도록 제작하였습니다. 
					웹사이트 전반에 걸쳐 <span class="emphasize">Bootstrap을 활용하여 <br>
					최대한 반응형 디자인으로 구현</span>하였으며, 
					필요한 부분은 <span class="emphasize">CSS를 커스터마이징</span>하여 직관적이고 깔끔한 UI를 제공함으로써
					사용자 친화적인 환경을 조성하고자 하였습니다. 
			   </p>
			   <p>
			   		API를 적용함에 있어 <span class="emphasize">성능 최적화를 위해 CDN을 활용</span>하여 로딩 속도를 개선하고 
			   		서버의 부하를 줄이고자 하였습니다.
					총 7가지 API를 사용해보았고 CRUD를 중심으로 <span class="emphasize">실무에서 요구되는 다양한 기능을 구현</span>하였습니다.
			   </p>
			   <p>
			   		개발하는 동안, <span class="emphasize">JUnit을 활용</span>하여 단위 테스트를 진행하였고, 
			   		<span class="emphasize">Postman을 통해 기능 테스트</span>를 하였습니다. 
			   		또한 프로젝트를 GitHub와 연동하여 프로젝트 관리 습관을 기르며 개발자로서 좋은 업무 태도를 습관화 하기위해 노력하였습니다.
			   </p>
		    </div>
	      </div>
	    </div>
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/project/mailing.png" alt="test" width="400" height="300">
	    		<div class="thumbnail_content">
			       <p><strong>메일링 서비스</strong></p>
			       <p>웹페이지 내 소통을 위해 추가한 메일링 기능입니다.</p>
			       <p class="hashtag">#Javax-mail #Google #SMTP #Email 송수신</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p>이 기능은 <span class="emphasize">JavaMail API를 활용하여 구현</span>하였으며, 웹페이지를 내 소통을 위한 메일링 기능을 제공합니다.</p>
		       <p>
		       		JavaMail API는 다양한 이메일 기능을 쉽게 구현할 수 있는 강력한 라이브러리로
		       		특히, <span class="emphasize">SMTP 서버를 설정</span>하여 
		       		다양한 메일 서버와의 호환성을 제공한다는 점에서 매우 유용하다 판단하여 기능 구현시 사용 API로 선택하였습니다.       		
		       </p>
		       <p>
		       		사용자 인터페이스 측면에서는 복잡한 절차 없이 쉽게 이메일을 작성하고 보낼 수 있도록
		       		최대한 <span class="emphasize">간단하고 직관적인 UI</span>를 구현하였습니다.
		       </p>
		       <p>
		       		이메일 전송 과정에서 보안을  중요한 요소로 고려하였으며,
		       		이를 위해 Google 메일과의 연동 과정에서 최신 버전을 사용하여 SSL (Secure Sockets Layer) 등의 보안 프로토콜을 적용하였습니다. 
		       		뿐만 아니라, <span class="emphasize">App key를 활용</span>하여 인증된 사용자만이 
		       		시스템을 사용할 수 있도록 보안 및 데이터 보호를 강화하였습니다.
		       		
		       </p>
		    </div>
	      </div>
	    </div>
	  </div><br>
	  <!-- section_03 -->
	  <div class="row text-center slideanim cardrow">
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/project/toyproject.png" alt="test" width="400" height="300">
	    	   <div class="thumbnail_content">
			       <p><strong>마춤뻡 테스트</strong></p>
			       <p>맞춤법을 자주 틀리는 친구를 위해 개발한 토이프로젝트입니다.</p>
			       <p class="hashtag">#배포경험 #Javascript #친구야 #좋아해</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p>개인적인 학습을 목표로 <span class="emphasize">기획부터 배포까지</span>
		       모든 과정을 직접 경험해 보기 위해 제작한 개인 토이 프로젝트입니다.</p>
		       <p>
		       		이 프로젝트의 주요 기획 의도는 자주 맞춤법을 틀리는 친구가 기분 나쁘지 않도록 존중하면서 
		       		올바른 맞춤법을 자연스럽게 익힐 수 있도록 돕기 위해 배운 개발 기술을 적용하여 구현하였습니다.		       		
		       </p>
		       <p>
		       		대부분의 심리테스트는 JavaScript만을 이용하여 클라이언트 측에서 구현되는 경우가 많지만, 
		       		<span class="emphasize">학습을 위해 Spring MVC 프레임워크를 활용</span>하여 
		       		서버-클라이언트 분리하며 결과에 따른 ID를 통해 점수에 따라 상이한 결과를 반환하도록 설계하였습니다.
		       </p>
		       <p>
		       		프로젝트의 배포 과정에서는 <span class="emphasize">Ngrok을 이용</span>하여 임시 배포를 경험해 보았으며, 
		       		이후 <span class="emphasize">Jenkins와 AWS를 활용하여 실제 배포까지 진행</span>하였습니다. <br>
		       		이를 통해 웹서비스의 전반적인 흐름을 직접 체험하고, 배포 과정에서 발생할 수 있는 문제들을 해결하는 능력을 기를 수 있었습니다.
		       </p>
		    </div>
	      </div>
	    </div>
	    <div class="card">
	      <div class="front">
      		<div class="thumbnail">
		       <img src="./img/project/HCM.png" alt="test" width="400" height="300">
		       <div class="thumbnail_content">
			       <p><strong>HCM 그룹웨어</strong></p>
			       <p>업무효율 증대를 목표로 개발한 사내 그룹웨어 서비스입니다.</p>
			       <p class="hashtag">#협업프로젝트 #6인개발자 #문서관리자 #실무문서 작성</p>
		       </div>
	    	</div>
	      </div>
	      <div class="back">
	      	<div class="thumbnail">
		       <p style="font-size: 18px;"><strong>I learned it</strong></p>
		       <p> 
		       		이 프로젝트는 사내 업무 효율성을 극대화하기 위해 개발한 가상의 고객사를 대상으로 한 그룹웨어 시스템입니다.     
		       </p>
		       <p>
		       		저는 HCM 프로젝트에서 6명으로 구성된 <span class="emphasize">팀 내 문서관리자와 전자결재 기능 개발</span>을 맡았습니다.
		       </p>
		       <p>
		       		첫 번째 팀 프로젝트임에도 불구하고, 저는 신입 개발자의 자세로 프로젝트에 적극적으로 참여했습니다. 
		       		문서관리자로서 책임감을 가지고 필요한 개발 문서를 체계적으로 작성하고 팀원들과 공유함으로써 
		       		프로젝트의 효율성을 높이는 데 기여했습니다. 
		       		또한, 간이식으로 회의 내용을 정리하여 개발 일정을 지키도록 지원했습니다.
		       </p>
		       <p>
		       		이로 인해 <span class="emphasize">데이터 충돌 문제를 최소화</span>하고 기한 내 프로젝트를 비교적 원활히 진행할 수 있었습니다. 
		       		이 경험을 통해 <span class="emphasize">프로젝트 초기에 사전 문서화가 중요함</span>을 몸소 깨달았으며, 
		       		<span class="emphasize">신입 개발자로서의 자세와 팀 내 소통과 협력을 더욱 강화</span>할 수 있는 계기가 되었습니다
		       </p>
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