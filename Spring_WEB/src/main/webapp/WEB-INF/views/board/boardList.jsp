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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="./css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="./js/homepage.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
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
		</main>	
	<!-- -------------------------------------------------- [ 설명 영역 ] ------------------------------------------------- -->
    <br><br><br>
    
    <div id="portfolio" class="container-fluid bg-grey">
	  <h2>Portfolio</h2><br>
	  <h4>What I have created</h4>
	  <div class="row slideanim">
<!-- 	    <div class="col-sm-4"> -->
<!-- 	      <div class="thumbnail"> -->
<!-- 	        <img src="paris.jpg" alt="Paris" width="400" height="300"> -->
<!-- 	        <p><strong>Paris</strong></p> -->
<!-- 	        <p>Yes, we built Paris</p> -->
<!-- 	      </div> -->
<!-- 	    </div> -->
	    <div class="col-sm-6">
	      <div class="thumbnail">
<!-- 	        <img src="./img/꼬부기.png" alt="Test Img" width="400" height="300"> -->
<!-- 	        <p><strong>New York</strong></p> -->
<!-- 	        <p>We built New York</p> -->
		<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img src="./img/꼬부기.png" alt="Test Img" width="400" height="300">
	      </div>
	      <div class="item">
	        <h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
	      </div>
	      <div class="item">
	        <h4>"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
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

	    <div class="col-sm-6 pjoject_description">
	      <div class="thumbnail p">
<!-- 	        <img src="sanfran.jpg" alt="San Francisco" width="400" height="300"> -->
			<div class="project_description_main">
				로그인 없이도 <b>모든 사용자가 이용할 수 있는 게시판</b>을 구현하였습니다. <br>
				게시판은 신입 개발자로서 구현해야할 기본 소양이라고 생각하고 CRUD를 기반으로 만들어보았습니다.
				<p></p>
				실제 사용자가 소통을 위해 이용하는 게시판이라 가정하고
				<span class="emphasize">commons-fileupload</span>
				를 이용하여 게시글의 파일을 등록하고 조회시 다운로드 받을 수 있도록 만들었으며,
				<span class="emphasize">Panination</span>
				을 직접 구현하며 서버에서 필요한 정보를 가져올 수 있도록 로직을 생각하며
				<span class="emphasize">SQL문</span>
				을 작성하였습니다.
				<p></p>
				사용자로써 이용할때엔 간단하게 생각했던 기능들도 직접 구현함에 있어 세세한 조건 설정과
				<span class="emphasize">알고리즘</span>
				으로 구성되어 있음을 깨닫고, 사용자가 아닌 개발자의 관점에서 모든 서비스를 바라보는
				<span class="emphasize">관점</span>
				으로 바뀌는 계기가 되었습니다.
<!-- 				<span class="emphasize">유지보수를 고려한 코드</span> -->
<!-- 				 작성의 중요성을 몸소 깨달았습니다. -->
			</div>
			<div class="project_description_sub">
				<div>
					<div class="description_subtitle">주요기능</div>
					<div class="description_subbody">
						<p>조건부 렌더링 (로그인 여부에 따른 작성자 username readonly)</p>
						<p>게시글 등록 / 상세조회 / 수정 / 삭제</p>
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
	  
<!-- 	  <h2>What our customers say</h2> -->
	  
	</div>
			

	
	
	
	
	
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