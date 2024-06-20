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
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/calendar.css">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
    
    <!-- ----------------------------------------------------------------------------------------------------------------------- -->
    <br><br><br>
    
    <div>
	  <h2>캘린더</h2>
	  <h4>What we have created</h4>
	  
	  <div class="row">  
	  <div class="col-sm-6">
	  <div class="description">
		  <div class="desHeader">
		  	<h2 class="desTitle text-center">Implement</h2>
		  </div>
		  <div class="desBody">
		  	<p class="desContent"> ■ 조건부 렌더링 (로그인 여부에 따른 다른 캘린더 표시) </p>
		  	<p class="desContent"> ■ FullCalendar 사용하여 캘린더 초기화 및 렌더링 </p>
		  	<p class="desContent"> ■ datetimepicker 사용하여 날짜 및 시간 선택 설정 </p>
		  	<p class="desContent"> ■ 일정 카테고리에 따른 다른 색상 이벤트 표시 </p>
		  	<p class="desContent"> ■ 일정 등록 모달 창 </p>
		  	<p class="desContent"> ■ 일정 조회 모달 창 </p>
		  	<p class="desContent"> ■ 비동기 일정 등록 기능 (AJAX POST 요청) </p>
		  	<p class="desContent"> ■ 비동기 일정 상세 조회 기능 (AJAX GET 요청) </p>
		  	<p class="desContent"> ■ 비동기 일정 삭제 기능 (AJAX DELETE 요청) </p>
		  	<p class="desContent"> ■ 비동기 일정 삭제 기능 (AJAX DELETE 요청) </p>
		  </div>
	  </div>
	  </div>
	  
	  <div class="col-sm-6">
	  <div class="description">
		  <div class="desHeader">
		  	<h2 class="desTitle text-center">API</h2>
		  </div>
		  <div class="desBody">
		  	<p class="desContent"> ■ Full Calendar </p>
		  	<p class="desContent"> ■ Google calendar </p>
		  	<p class="desContent"> ■ DateTimePicker </p>
		  </div>
		  <div class="desHeader">
		  	<h2 class="desTitle text-center">Impression</h2>
		  </div>
		  <div class="desBody">
		  	<p class="desContent boldFont"> ■ 조건부 렌더링 (로그인 여부에 따른 다른 캘린더 표시) </p>
		  </div>
	  </div>
	  </div>
	  
	  </div> <!-- class="row" END -->
	 </div>

	</main>
	
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