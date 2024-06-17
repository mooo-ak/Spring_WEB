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

	<%@include file="/WEB-INF/views/menu/header.jsp"%>

	<main>
		
		<div class="container-fluid boardlst">
			<table class="table table-bordered">
				<tr>
					<td>NO</td>
					<td id="b_seq">${bDto.b_seq}</td>
					<td>작성자</td>
					<td>${bDto.b_writer}</td>
					<td>작성일</td>
					<td>${bDto.b_createAt}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="5">${bDto.b_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="5" style="height: 300px; overflow-y:scroll;">${bDto.b_content}</td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td id="origin_filename" style="display: none">${fDto.origin_filename }</td>
					<td colspan="5"><a id="downloadFile" style="cursor: pointer;">${fDto.origin_filename}</a></td>
				</tr>
			</table>
		</div>
		
		<div style="text-align: center;">
			<button type="button" class="modifyBtn btn btn-primary">수정하기</button>
			<button type="button" class="delBtn btn btn-warning">삭제하기</button>
			<button type="button" class="reBtn btn btn-warning">복구하기</button>			
		</div>
		
		<div style="text-align: center;">
			<button type="button" class="btn" onclick="history.back(-1)">뒤로가기</button>
		</div>
		
	</main>

	<%@include file="/WEB-INF/views/menu/footer.jsp"%>

</body>

<script type="text/javascript">

	
	/* 파일다운로드 */
	
	// 1) JSP 화면에서 b_seq, filename 가져오기
	var b_seq = document.getElementById('b_seq').innerText;
	var origin_filename = document.getElementById('origin_filename').innerText;
	
	// 2) 파일명 클릭시 function download() 실행
	document.getElementById('downloadFile').addEventListener('click', function(event){
		event.preventDefault(); 
		
		downloadFile(b_seq, origin_filename);
	});
	
	// 3) function downloadFile() 정의
	 function downloadFile(b_seq, origin_filename) {
    	 $.ajax({
    	        url: './downloadFile.do',
    	        type: 'GET',
    	        data: { b_seq: b_seq },
    	        xhrFields: {
    	            responseType: 'blob' // 서버로부터 바이너리 데이터(blob)를 받습니다.
    	        },
    	        success: function(data) {
    	        	// <a> 태그 생성
    	            var a = document.createElement('a');
    	            var url = window.URL.createObjectURL(data);
    	            // URL : blob:http://localhost:8080/620e5479-9737-40de-a3d2-337b07d518ec
    	            console.log('URL : ' + url);
    	            a.href = url;
    	            a.download = origin_filename; // 파일 이름 설정
    	         	// <a> 태그 body에 추가
    	            document.body.appendChild(a);
    	            a.click();
    	         	// URL 객체를 해제하여 리소스를 해제
    	            window.URL.revokeObjectURL(url);
    	         	// body로부터 <a> 제거
    	            document.body.removeChild(a);
    	        },
    	        error: function() {
	                alert('파일 다운로드에 실패했습니다.');
    	        }
    	    });
     }
	

	 // 4) function 버전_02
	 
	 /*  XMLHttpRequest : WEB API 일종. JS를 통해 HTTP 요청 전송 및 수신할 때 사용
	 *	xhr.open(메서드, 전송URL, 비동기여부) : 초기화
	 *  xhr.responseType : HTTP 응답타입(document, json, text, blob)
	 *  xhr.onload : HTTP 요청이 성공적으로 완료한 경우
	 */ 
	 
	 /*function downloadFile(b_seq, origin_filename) {
		// XMLHttpRequest 객체를 생성하여 AJAX 요청을 준비
         var xhr = new XMLHttpRequest();
        // 다운로드할 파일의 URL을 설정하고, GET 요청을 비동기로 보낼 준비
         xhr.open('GET', './downloadFile.do?b_seq=' + b_seq, true);
        // 서버로부터의 응답형식으로 blob으로 받을 것을 지정
         xhr.responseType = 'blob';
		// xhr.onload : HTTP 요청이 성공적으로 완료한 경우
         xhr.onload = function () {
             if (xhr.status === 200) {
                 var disposition = xhr.getResponseHeader('Content-Disposition');
                 var filename = origin_filename;
                 console.log('disposition: ' + disposition);
                 console.log('filename: ' + filename);
                 
                 // 'Content-Disposition' 헤더가 존재하고, 'attachment'를 포함하는지 확인
                 if (disposition && disposition.indexOf('attachment') !== -1) {                	 
                	// 서버로부터 받은 blob 데이터를 변수에 저장
                     var blob = xhr.response;
                    // HTML <a> 태그를 생성하여 다운로드 링크를 설정
                     var link = document.createElement('a');
                    // blob 데이터를 URL로 변환하여 링크에 설정
                     link.href = window.URL.createObjectURL(blob);
                     link.download = filename;
                     link.click();
                     // 다운로드가 끝난 후 생성된 URL 객체를 해제
                     window.URL.revokeObjectURL(link.href);              
                 }   
             } else {
                 console.error('파일 다운로드 중 오류 발생');
             }
         };
         
		// 서버로 전송 
         xhr.send();
     }*/


	/* 수정하기 */
	var modifyBtn = document.querySelector('.modifyBtn');
	modifyBtn.addEventListener("click", function(){
		window.location.href = "./getUpdateBoard.do?b_seq=${bDto.b_seq}";
	});
	
	
	/* 삭제하기 */
	var delBtn = document.querySelector('.delBtn');
	delBtn.addEventListener("click", function() {
		var confirmation = confirm("정말 삭제하시겠습니까?");
		if(confirmation) {
			window.location.href="./delBoard.do?b_seq=${bDto.b_seq}";
		} else {
			self.close();
		}
	});
	

</script>

</html>