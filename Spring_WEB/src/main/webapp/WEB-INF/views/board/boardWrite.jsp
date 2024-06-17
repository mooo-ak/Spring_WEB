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
			<table class="table table-bordered">
				<tr>
					<th>작성자</th>
					<td><input type="text" id="board_writer" name="b_writer"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">
						<input type="text" id="board_title" name="b_title">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5" style="overflow-y:scroll;">
						<textarea id="board_content" name="b_content"></textarea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" id="board_file" name="file" multiple="multiple"></td>
				</tr>
			</table>
				
		<div style="text-align: center;">
			<button type="submit" id="insertBtn" class="btn btn-primary">등록하기</button>
			<button type="button" class="listBtn btn btn-warning">목록보기</button>
		</div>
		
		</div>
	</main>

	<%@include file="/WEB-INF/views/menu/footer.jsp"%>

</body>
<script type="text/javascript" src="./js/boardWrite.js"></script>


</html>