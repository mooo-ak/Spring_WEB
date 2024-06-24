
//
var emailForm = document.getElementById('emailForm');


document.querySelector('.sendEmail').addEventListener('click', sendEmail);

function sendEmail(event){
	event.preventDefault();
	
	if(confirm("이메일을 전송하시겠습니까?")) {
		const formData = new FormData(emailForm);

	// fetch를 사용하여 POST 요청을 보냄
    fetch('./sendEmail.do', {
        method: 'POST',
        body: formData
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.text();
    })
    .then(data => {
        console.log('Email sent successfully:', data);
        alert('이메일이 성공적으로 전송되었습니다!');
        // 성공적으로 전송된 경우, 여기서 다음 동작을 추가할 수 있음
        // 예: 사용자에게 성공 메시지 표시, 페이지 리디렉션 등
    })
    .catch(error => {
        console.error('Error sending email:', error);
        alert('이메일 전송에 실패하였습니다.');
        // 전송 실패 시 에러 처리
    });
	}
	
}