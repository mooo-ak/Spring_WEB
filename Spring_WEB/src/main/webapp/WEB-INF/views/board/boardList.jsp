<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지</title>
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!---------- 헤더 ---------->
	<%@include file="/WEB-INF/views/menu/header.jsp"%>

	<main class="container">
	<!---------- 메인 : 게시판 ---------->
		<div class="container-fluid boardlst">
	<!---------- 글쓰기 버튼 ---------->
			<div style="text-align: right;">
				<button type="button" class="writeBtn btn btn-primary" style="margin-bottom: 30px;">새글작성</button>
			</div>
	<!---------- 게시판 ---------->
			<form>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>날짜</th>
						<th>조회</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="lst" items="${pagingList}" varStatus="vs">
	            <c:if test="${lst.b_delflag == 'N'}">
	                <tr onclick="location.href='./getDetailBoard.do?b_seq=${lst.b_seq}&currentPage=${pagenation.currentPage }';" style="cursor: pointer;">
	                    <td>${lst.b_no}</td>
	                    <td><strong>${lst.b_title}</strong></td>
	                    <td>${lst.b_writer}</td>
	                    <td>
	                    	<fmt:parseDate var="parsedDate" pattern="yyyy-MM-dd HH:mm:ss" value="${lst.b_createAt}"  />
							<fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" />
	                    </td>
	                    <td>${lst.b_viewcount}</td>
	                </tr>
	            </c:if>
	        	</c:forEach>
				</tbody>
			</table>
			</form>			
		</div>
	<!---------- 페이징 ---------->
		<div class="paging" style="text-align: center;">
			<ul class="pagination">			
			
			<!-- 이전 페이지 링크 -->
            <c:if test="${pagenation.prev}">
                <li><a href="paging.do?currentPage=${pagenation.startPage - 1}">이전</a></li>
            </c:if>

            <!-- 페이지 번호 링크 -->
            <c:forEach begin="${pagenation.startPage}" end="${pagenation.endPage}" var="i">
                <c:choose>
                    <c:when test="${i == pagenation.currentPage}">
                        <li><a><strong>${i}</strong></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="./paging.do?currentPage=${i}">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <!-- 다음 페이지 링크 -->
            <c:if test="${pagenation.next}">
                <li><a href="paging.do?currentPage=${pagenation.endPage + 1}">다음</a></li>
            </c:if>
        
			</ul>
		</div>	
		
	<!-- ----------------------------------------------------------------------------------------------------------------------- -->
    <br><br><br>
    
    <div>
	  <h2>캘린더</h2>
	  <h4>What we have created</h4>
	  
	  <div class="row">  
	  <div class="col-sm-6">
	  <div class="description">
		  <div class="desHeader">
		  	<h3 class="desTitle text-center">구현 기능</h3>
		  </div>
		  <div class="desBody">
		  	<p class="desContent boldFont"> ■ 조건부 렌더링 (로그인 여부에 따른 다른 캘린더 표시) </p>
		  	<p class="desContent boldFont"> ■ FullCalendar 사용하여 캘린더 초기화 및 렌더링 </p>
		  	<p class="desContent boldFont"> ■ datetimepicker 사용하여 날짜 및 시간 선택 설정 </p>
		  	<p class="desContent boldFont"> ■ 일정 카테고리에 따른 다른 색상 이벤트 표시 </p>
		  	<p class="desContent boldFont"> ■ 일정 등록 모달 창 </p>
		  	<p class="desContent boldFont"> ■ 일정 조회 모달 창 </p>
		  	<p class="desContent boldFont"> ■ 비동기 일정 등록 기능 (AJAX POST 요청) </p>
		  	<p class="desContent boldFont"> ■ 비동기 일정 상세 조회 기능 (AJAX GET 요청) </p>
		  	<p class="desContent boldFont"> ■ 비동기 일정 삭제 기능 (AJAX DELETE 요청) </p>
		  	<p class="desContent boldFont"> ■ 비동기 일정 삭제 기능 (AJAX DELETE 요청) </p>
		  </div>
	  </div>
	  </div>
	  
	  <div class="col-sm-6">
	  <div class="description">
		  <div class="desHeader">
		  	<h3 class="desTitle text-center">API</h3>
		  </div>
		  <div class="desBody">
		  	<p class="desContent boldFont"> ■ CKEditor </p>
		  	<p class="desContent boldFont"> ■ Commons-File-Upload </p>
		  	<p class="desContent boldFont"> ■ Paganation </p>
		  </div>
		  <div class="desHeader">
		  	<h3 class="desTitle text-center">느낀점</h3>
		  </div>
		  <div class="desBody">
		  	<p class="desContent boldFont"> ■ 조건부 렌더링 (로그인 여부에 따른 다른 캘린더 표시) </p>
		  </div>
	  </div>
	  </div>
	  
	  </div> <!-- class="row" END -->
	 </div>	
			
	</main>
	
	
	
	
	
	<!---------- 푸터 ---------->
	<%@include file="/WEB-INF/views/menu/footer.jsp"%>

</body>
<script type="text/javascript">
	/* 새글등록 */
	var writeBtn = document.querySelector('.writeBtn');
	writeBtn.addEventListener("click", function(){
		window.location.href="./getWriteBoard.do";
	});
</script>
</html>