
/* 캘린더 랜더링 */
document.addEventListener('DOMContentLoaded', function() {
	const calendarEl = document.getElementById('calendar');

	const calendar = new FullCalendar.Calendar(calendarEl, {
		// 초기 로드될 때 기본 화면 옵션 : momth
		initialView: 'dayGridMonth',
		// 캘린더 높이 : [정수] px 높이로 자동설정. 높이에 맞지 않을 시 스크롤바 자동 생성
		height: 650,
		// 캘린더 언어
		locale: 'ko',
		// 캘린더 클릭 및 드래그 : true
		selectable: true,
		// 날짜 클릭 → today 일정으로 이동
		navLinks: true,
		// 캘린더 Header 설정 
		headerToolbar: {
			left: 'today prev,next',
			center: 'title',
			right: 'dayGridMonth,timeGridWeek,timeGridDay'
		},
		// 캘린더 데이터(resource) 불러오기 (JSON)
        events: {
            url: './getAllSchedule.do',
            method: 'GET',
            failure: function() {
                alert('일정 데이터를 불러오는 데 실패했습니다.');
            }
        },
        // 이벤트가 캘린더에 렌더링된 후에 호출되는 콜백 함수
        eventDidMount: function(info) {
            console.log('이벤트의 세부 정보를 확인:', info.event);
            
        },
        // 날짜를 클릭했을 때 발생할 이벤트 : 일정 등록 modal
        dateClick: function(info) {
	 		$('#calendarModal').modal('show');
	 		// [ 참고 예시 ]
		    // alert('Date: ' + info.dateStr);
		    // alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY);
		    // alert('Current view: ' + info.view.type);
		    // info.dayEl.style.backgroundColor = 'red';
		}
		
    }); // Calendar END

    calendar.render();
});
        
    
    
    
    
    
        
	/* ------------------------------------------------------------------------
	 * 시행착오 01
	 * events : 캘린더 데이터(JSON) Ajax로 반환하기
	 * → api 메서드 활용해서 코드 가독성 향상
	events: {
	function(fetchInfo, successCallback, failureCallback) { // 새로운 이벤트 데이터가 필요할 때마다 호출하는 함수
	    $.ajax({
	        url: './getAllSchedule.do',
	        type: 'GET',
	        dataType: 'json',
	        success: function(data) {
	            console.log("일정 데이터:", data);
	            var events = [];
	            $(data).each(function() {
	                events.push({
	                    id: this.cal_no,
	                    title: this.cal_title,
	                    start: this.cal_start,
	                    end: this.cal_end,
	                    description: this.cal_content
	                });
	            });
	            successCallback(events);
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            console.log("AJAX Error: ", textStatus, errorThrown);
	            console.log("Response Text: ", jqXHR.responseText);
	            failureCallback(errorThrown);
	       }
	  }); ------------------------------------------------------------------------
	*/