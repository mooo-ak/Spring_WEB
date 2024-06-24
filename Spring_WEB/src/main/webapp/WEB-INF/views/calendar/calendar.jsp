<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지</title>
<!-- CSS 파일들 -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="./css/calendar.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<!-- jQuery UI CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.min.css">
<!-- jQuery DateTimePicker CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/jquery.datetimepicker.min.css">
<!-- JS 파일들 -->
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- jQuery UI -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- jQuery DateTimePicker JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/build/jquery.datetimepicker.full.min.js"></script>
<script src="./js/homepage.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<%@include file="/WEB-INF/views/menu/header.jsp"%>
	
	<main class="container">	
	
	<c:choose>
		<c:when test="${sessionScope.loginInfo != null}">	
			<div id='calendar_user' style="margin-top: 100px;"></div>
	
			<!-------------------- ★★★ 일정 등록 Modal ★★★ -------------------->
			<!-- Modal : tabindex="-1" 모달 창이 열리면 자동으로 포커스를 가져오기 위해 사용-->
			<div id="calendarModal" class="modal fade" tabindex="-1" role="dialog">
			  <div class="modal-dialog">
			
			    <!-- Modal content-->
				<div class="modal-content">
				<!-- Modal content header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">일정 등록</h4>
				</div>
				<!-- Modal content body-->
				<form id="form" class="modal-body">
					<label for="taskId" class="col-form-label">카테고리</label> 
					<!-- <input type="text" class="form-control" id="calendar_category" name="cal_category"> -->
					<select id="calendar_category" name="cal_category" style="width: 100%; padding:8px;">
						<option>공지사항</option>
						<option>개인일정</option>
						<option>연차/휴가</option>
						<option>외근/출장</option>
					</select>
					<br>
					<label for="taskId" class="col-form-label">일정 제목</label> 
					<input type="text" class="form-control" id="calendar_title" name="cal_title">
					<label for="taskId" class="col-form-label">일정 내용</label> 
					<input type="text" class="form-control" id="calendar_content" name="cal_content"> 
					<label for="taskId" class="col-form-label">작성자</label> 
					<input type="text" class="form-control" id="calendar_writer" name="cal_writer" value="${loginInfo.username }" readonly="readonly"> 
					<label for="taskId" class="col-form-label">시작 날짜</label> 
					<input type="text" class="form-control datetimepicker" id="calendar_start" name="cal_start">
					<label for="taskId" class="col-form-label">종료 날짜</label> 
					<input type="text" class="form-control datetimepicker" id="calendar_end" name="cal_end">
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" id="addCalendar">추가</button>
					<button type="button" class="btn btn-secondary"  id="ModalClose" data-dismiss="modal">취소</button>
				</div>
			</div>
		
			</div>
			</div>
			
			<!-------------------- ★★★ 일정 조회 Modal ★★★ -------------------->
			<div id="scheduleModal" class="modal fade" tabindex="-1" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <!-- Modal content header-->
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">상세 일정</h4>
			      </div>
			      <!-- Modal content body-->
			      <div class="modal-body">
			        <label for="calendar_category" class="col-form-label">카테고리</label>
			        <input type="text" class="updateTag form-control" id="calendar_category_detail" name="cal_category" readonly="readonly">
			        <label for="calendar_title" class="col-form-label">일정 제목</label>
			        <input type="text" class="updateTag form-control" id="calendar_title_detail" name="cal_title" readonly="readonly">
			        <label for="calendar_content" class="col-form-label">일정 내용</label>
			        <input type="text" class="updateTag form-control" id="calendar_content_detail" name="cal_content" readonly="readonly">
			        <label for="calendar_writer" class="col-form-label">작성자</label>
			        <input type="text" class="noUpdateTag form-control" id="calendar_writer_detail" name="cal_writer" readonly="readonly">
			        <label for="calendar_start" class="col-form-label">시작 날짜</label>
			        <input type="text" class="updateTag updateDate form-control" id="calendar_start_detail" name="cal_start" readonly="readonly">
			        <label for="calendar_end" class="col-form-label">종료 날짜</label>
			        <input type="text" class="updateTag updateDate form-control" id="calendar_end_detail" name="cal_end" readonly="readonly">
			      </div>
			      <div class="modal-footer">
			      	<div class="btn-group1">	      	
			        <button type="button" class="btn btn-warning" id="modifyCalendar">수정</button>
			        <button type="button" class="btn btn-secondary" id="ModalClose" data-dismiss="modal">취소</button>
			        </div>
			        <div class="btn_group2" style="display: none">
			        <button type="button" class="btn btn-secondary" id="updateCalendar">등록</button>
			        <button type="button" class="btn btn-warning" id="delCalendar">삭제</button>
			      	</div>
			      </div>
			    </div>
			  </div>
			</div>
	
		</c:when>
	    <c:otherwise>
	    	<div id='calendar_every' style="margin-top: 100px;"></div>
	    </c:otherwise>
    </c:choose>	
	</main>
    
    <!-- ----------------------------------------------------------------------------------------------------------------------- -->
    <br><br><br>
    
    <div id="portfolio" class="container-fluid bg-grey">
	  <h2>Portfolio</h2><br>
	  <h4>What I have created</h4>
	  <div class="row slideanim">
	    <div class="col-sm-6">
	      <div class="thumbnail">
			<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		    </ol>
		
		    <div class="carousel-inner" role="listbox">
		      <div class="item active">
				<img src="./img/calendar/캘린더01.png" alt="Test Img" width="400" height="300">
<!-- 				<img src="./img/꼬부기.png" alt="Test Img" width="400" height="300"> -->
		      </div>
		      <div class="item">
		        <img src="./img/꼬부기.png" alt="Test Img" width="400" height="300">
		      </div>
		      <div class="item">
		        <img src="./img/꼬부기.png" alt="Test Img" width="400" height="300">
		      </div>
		    </div>
		
		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		      </div>
		    </div>
		    <div class="col-sm-6">
		      <div class="thumbnail">
	<!-- 	        <img src="sanfran.jpg" alt="San Francisco" width="400" height="300"> -->
				<div class="project_description_main">
					<b>사용자의 스케줄 관리를 도울 수 있는 일정 캘린더</b> 입니다. <br>
					캘린더 API를 사용해서 프로그램을 만들어보고 싶어 개발하였습니다.
					<p></p>
					사용자의 편의를 고려하여, 개발하며
					<span class="emphasize">Full Calendar</span>
					외에도
					<span class="emphasize">Google Calendar</span>
					를 사용하여 공휴일을 표시하고
					<span class="emphasize">DateTimePicker</span>
					를 통해 구체적인 시간까지 등록할 수 있도록 구현하였습니다.
					<p></p>
					<span class="emphasize">API 공식문서</span>
					를 보고 사용하는데 익숙해지고자, 되도록 공식 문서에 나와있는 메서드를 활용해 기능을 구현하고자 하였으며, 
					개발을 하며 
					<span class="emphasize">코드 리팩토링</span>
					과
					<span class="emphasize">유지보수를 고려한 코드</span>
					 작성의 중요성을 몸소 깨달았습니다.
				</div>
				<div class="project_description_sub">
					<div>
						<div class="description_subtitle">주요기능</div>
						<div class="description_subbody">
							<p>조건부 렌더링 (로그인 여부에 따른 다른 캘린더 표시)</p>
							<p>모달창을 통한 일정 등록 / 상세조회 / 수정 / 삭제</p>
							<p>Ajax를 통한 비동기 요청 사용</p>
						</div>
					</div>
					<div>
						<div class="description_subtitle">GitHub</div>
						<div class="description_subbody">
							<p>https://github.com/mooo-ak/Spring_WEB</p>
						</div>
					</div>
					<div>
						<div class="description_subtitle">Frontend</div>
						<div class="description_subbody">
							<p>HTML, CSS, JavaScript</p>
						</div>
					</div>
					<div>
						<div class="description_subtitle">Backend</div>
						<div class="description_subbody">
							<p>Spring Framework, </p>
						</div>
					</div>
					<div>
						<div class="description_subtitle">Database</div>
						<div class="description_subbody">
							<p>Oracle</p>
						</div>
					</div>
					<div>
						<div class="description_subtitle">Deployment</div>
						<div class="description_subbody">
							<p></p>
						</div>
					</div>
				</div>
		      </div>
		    </div>
		  </div><br>
		  
<!-- 		  <h2>What our customers say</h2> -->
		  
		</div>

	
	<%@include file="/WEB-INF/views/menu/footer.jsp" %>

</body>
<!-- Full Calendar CDN	 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.js"></script>
<!-- User 캘린더 상세 구현을 위한 js 연결 -->
<script src="./js/calendar/calendar_ver02.js"></script>
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
	var calendarEvery = document.getElementById('calendar_every');
	var calendar = new FullCalendar.Calendar(calendarEvery, {
        initialView: 'dayGridMonth',
        height: 650,
        headerToolbar: {
            left: 'prev,next',
            center: 'title',
            right: 'dayGridMonth today'
        },
        eventSources: [
       	{
       		googleCalendarApiKey: 'AIzaSyBFcVftEBRQb1sa_bD23knaAHmVoyTE5PE',
               googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
               className: 'googleEvent',			
       		backgroundColor: '#f4511e'
           }
       	],
      });
      calendar.render();
    });

</script>
</html>