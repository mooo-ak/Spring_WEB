 

/* ---------- 등록하기 ---------- */

	document.getElementById('insertBtn').addEventListener('click', function(event){
    event.preventDefault();  // 기본 폼 제출 동작을 막습니다.
    
    var confirmation = confirm("게시글을 등록하시겠습니까?");
    	if (confirmation) {

	// 폼 데이터 수집
    var b_title = document.getElementById('board_title').value;
    var b_writer = document.getElementById('board_writer').value;
    var b_content = document.getElementById('board_content').value;
    var fileInput = document.getElementById('board_file');
	
	//  # JSON 형태로 데이터 수집 : JAVA -> JSON 
	//  # Jackson : JAVA -> JSON or JSON -> JAVA 데이터 변환 처리
	var boardData = {
        b_title: b_title,
        b_writer: b_writer,
        b_content: b_content
    };
	
	//  # FormData 객체 생성 : fileUpload의 Ajax 업로드
	//  # JSON.stringify(boardData) : boardData -> JSON 타입으로 직렬화
	var formData = new FormData();
	formData.append('bDto', new Blob([JSON.stringify(boardData)],{type : 'application/json'}));

	// 파일 추가 
	// formData.append('fileDto', file); -> for반복문으로 변경
    for (var i = 0; i < fileInput.files.length; i++) {
        formData.append('file', fileInput.files[i]);
    }
	
	//  # AJAX 요청 설정
	$.ajax({
            url: "./insertBoard.do",
            method: "post",
            enctype: 'multipart/form-data',
            contentType: false, // false : ajax 방식에서 파일을 넘길 때 multipart/form-data 형태로 전송되기 위한 옵션값
            processData:false, //contentType을 false로 줬을 때 QueryString 자동 설정
            data:formData,
            success:function(resp){
				// 서버와 통신을 성공했다면 서버가 다시 주는 데이터
                console.log("업로드 성공", resp);
                alert("게시글이 성공적으로 등록되었습니다.");
                window.location.href = "./getBoardList.do";  // 성공 시 목록 페이지로 이동
            },
            error:function(){
				// 서버와 통신을 실패했다면
                console.log("업로드 실패");
                alert("게시글 등록에 실패하였습니다.");
            }
        });

		} else {
	        self.close();
	    }
	});



/* ---------- 목록보기 ---------- */
var delBtn = document.querySelector('.listBtn');
delBtn.addEventListener("click", function() {
	var confirmation = confirm("수정내역이 저장되지 않습니다. 정말 목록으로 돌아가시겠습니까?");
	if(confirmation) {
		window.location.href="./getBoardList.do";
	} else {
		self.close();
	}
});