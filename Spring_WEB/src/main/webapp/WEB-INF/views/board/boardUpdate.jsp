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

<style type="text/css">
	input {
			width: 100%; 
			border: none; 
			outline: none;
		}
	textarea {
			width: 100%; 
			height: 300px;
			border: none; 
			outline: none;
	}
		
</style>
</head>
<body>

	<%@include file="/WEB-INF/views/menu/header.jsp"%>

	<main>
		
		<div class="container-fluid boardlst">
		<form action="./modifyBoard.do" method="post">
			<table class="table table-bordered">
				<tr>
					<td>NO</td>
					<td>
						<input type="text" name="b_seq" value="${bDto.b_seq}" readonly="readonly">
					</td>
					<td>작성자</td>
					<td>
						<input type="text" name="b_writer" value="${bDto.b_writer}" readonly="readonly">
					</td>
					<td>작성일</td>
					<td>
						<input type="text" name="bDto.b_createAt" value="${bDto.b_createAt}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="5">
						<input type="text" name="b_title" value="${bDto.b_title}">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="5" style="overflow-y:scroll;">
						<textarea name="b_content">${bDto.b_content}</textarea>
					</td>
				</tr>
			</table>
		
		<div style="text-align: center;">
			<button type="submit" class="updateBtn btn btn-primary">등록하기</button>
			<button type="button" class="listBtn btn btn-warning">목록보기</button>
		</div>
		</form>
		</div>
		
	</main>

	<%@include file="/WEB-INF/views/menu/footer.jsp"%>

</body>

<script type="text/javascript">
	/* 수정하기 */
	var modifyBtn = document.querySelector('.updateBtn');
	modifyBtn.addEventListener("click", function(){
		window.location.href = "./modifyBoard.do";
	});
	/* 목록보기 */
	var delBtn = document.querySelector('.listBtn');
	delBtn.addEventListener("click", function() {
		var confirmation = confirm("수정내역이 저장되지 않습니다. 정말 목록으로 돌아가시겠습니까?");
		if(confirmation) {
			window.location.href="./getBoardList.do";
		} else {
			self.close();
		}
	});
</script>

</html>