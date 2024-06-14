<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지</title>
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/login.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.fc-scrollgrid-sync-table tr td:first-child .fc-daygrid-day-number{
   color:red;
   }
.fc-scrollgrid-sync-table tr td:last-child .fc-daygrid-day-number{
   color:blue;
   }
</style>
</head>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<%@include file="/WEB-INF/views/menu/header.jsp"%>
	
	<main class="container">
	
	<div id='calendar' style="margin-top: 100px;"></div>
	
	<!-------------------- ★★★ 일정 등록 Modal ★★★ -------------------->
	<!-- Modal : tabindex="-1" 모달 창이 열리면 자동으로 포커스를 가져오기 위해 사용-->
	<div id="calendarModal" class="modal fade" tabindex="-1" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
		<div class="modal-content">
		<!-- Modal content header-->
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">일정을 등록하세요</h4>
		</div>
		<!-- Modal content body-->
		<div class="modal-body">
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
			<input type="text" class="form-control" id="calendar_writer" name="cal_writer"> 
			<label for="taskId" class="col-form-label">시작 날짜</label> 
			<input type="date" class="form-control" id="calendar_start" name="cal_start">
			<label for="taskId" class="col-form-label">종료 날짜</label> 
			<input type="date" class="form-control" id="calendar_end" name="cal_end">
		</div>
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
	        <h4 class="modal-title">일정을 확인하세요</h4>
	      </div>
	      <!-- Modal content body-->
	      <div class="modal-body">
	        <label for="calendar_category" class="col-form-label">카테고리</label>
	        <input type="text" class="form-control" id="calendar_category_detail" name="cal_category_detail">
			<!-- <div id="calendar_category_detail"></div> -->
	        <label for="calendar_title" class="col-form-label">일정 제목</label>
	        <div id="calendar_title_detail"></div>
	        <label for="calendar_content" class="col-form-label">일정 내용</label>
	        <div id="calendar_content_detail"></div>
	        <label for="calendar_writer" class="col-form-label">작성자</label>
	        <div id="calendar_writer_detail"></div>
	        <label for="calendar_start" class="col-form-label">시작 날짜</label>
	        <div id="calendar_start_detail"></div>
	        <label for="calendar_end" class="col-form-label">종료 날짜</label>
	        <div id="calendar_end_detail"></div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-warning" id="modifyCalendar">수정</button>
	        <button type="button" class="btn btn-warning" id="delCalendar">삭제</button>
	        <button type="button" class="btn btn-secondary" id="ModalClose" data-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>

	</main>
	
	<%@include file="/WEB-INF/views/menu/footer.jsp" %>

</body>
<!-- Full Calendar CDN	 -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js" 
integrity="sha256-hk2Q9BXDSq54aGHbj6/T9up41uNJ5tLQw49s0HqWfPw=" crossorigin="anonymous"></script>
<!-- 캘린더 상세 구현을 위한 js 연결 -->
<script src="./js/calendar.js"></script>
</html>