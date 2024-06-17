<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지 1</title>
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!---------- 헤더 ---------->
	<%@include file="/WEB-INF/views/menu/header.jsp"%>

	<main>
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
				<c:forEach var="lst" items="${lists}" varStatus="vs">
	            <c:if test="${lst.b_delflag == 'N'}">
	                <tr onclick="location.href='./getDetailBoard.do?b_seq=${lst.b_seq}';" style="cursor: pointer;">
	                    <td>${lst.b_seq}</td>
	                    <td><strong>${lst.b_title}</strong></td>
	                    <td>${lst.b_writer}</td>
	                    <td>
	                    	<fmt:parseDate var="parsedDate" pattern="yyyy-MM-dd HH:mm:ss" value="${lst.b_createAt}"  />
							<fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" />
	                    </td>
	                    <td></td>
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
			  <li><a href="#">◀</a></li>
			  <li><a href="#">1</a></li>
			  <li><a href="#">2</a></li>
			  <li><a href="#">3</a></li>
			  <li><a href="#">4</a></li>
			  <li><a href="#">5</a></li>
			  <li><a href="#">▶</a></li>
			</ul>
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