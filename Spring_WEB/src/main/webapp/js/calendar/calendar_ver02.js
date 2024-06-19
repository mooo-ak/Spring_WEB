
// ------------------------------------------------------ [ 전역변수 ]
const calendarUser = document.getElementById('calendar_user');

var modifyBtn = document.getElementById('modifyCalendar');
var btnGroup1 = document.querySelector('.btn-group1');
var btnGroup2 = document.querySelector('.btn_group2');
var delBtn = document.getElementById('delCalendar');
var updateTags = document.querySelectorAll('.updateTag');
var updateDates = document.querySelectorAll('.updateDate');
var category = document.getElementById('calendar_category_detail');
var updateBtn = document.getElementById('updateCalendar');

//var userId = document.getElementById('userID');
// ------------------------------------------------------ [ header 옵션 ]
var headerUserOption = {
	left: 'today prev,next',
	center: 'title',
	right: 'dayGridMonth,timeGridWeek,timeGridDay'
} 

var headerEveryOption = {
	left: 'prev,next',
	center: 'title',
	right: 'dayGridMonth today'
}

// ------------------------------------------------------ [ 캘린더 설정 ]
var calendarUserOption = {
	
	initialView: 'dayGridMonth', // 초기 로드될 때 기본 화면 옵션 : momth
	height: 650, // 캘린더 높이 : [정수] px 높이로 자동설정. 높이에 맞지 않을 시 스크롤바 자동 생성
	// locale: 'ko', // 캘린더 언어
	selectable: true, // 캘린더 영역 클릭 및 드래그 : true
	navLinks: true, // 날짜 클릭 → today 일정으로 이동
	dayMaxEvents: true, // 이벤트가 너무 많을때 + more
	eventLimit: true,
	droppable : true,
	editable : true,
	headerToolbar: headerUserOption, // 캘린더 Header 설정 
	
	// 캘린더 데이터(resource) 불러오기 (JSON)
    events: {
        url: './getAllSchedule.do',
        method: 'GET',
        extraParams: {
        	user_id: $('#userID').val()  
    	},
        failure: function() {
            alert('일정 데이터를 불러오는 데 실패했습니다.');
        }
    },
    // 구글캘린더 연동
    eventSources: [
	{
		googleCalendarApiKey: 'AIzaSyBFcVftEBRQb1sa_bD23knaAHmVoyTE5PE',
        googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
        className: 'googleEvent',			
		backgroundColor: '#f4511e'
    }
	],
    // 이벤트가 캘린더에 렌더링된 후에 호출되는 콜백 함수 
    eventDidMount: function(info) { 
        // console.log('이벤트의 세부 정보를 확인:', info.event);
		// var category = info.event.extendedProps.category;
		// console.log("category: ", category); 
            
            var categoryClasses = {
                '공지사항': 'category-notice',
                '개인일정': 'category-personal',
                '연차/휴가': 'category-vacation',
                '외근/출장': 'category-business'
            };
            var categoryClass = categoryClasses[info.event.extendedProps.category];

            info.el.classList.add(categoryClass);
    },

}


// ------------------------------------------------------ [ 캘린더 랜더링 ]
	
const calendarLogin = new FullCalendar.Calendar(calendarUser, calendarUserOption);

calendarLogin.render();

calendarLogin.on('eventClick', delSchedule);
calendarLogin.on('eventClick', updateModal);
calendarLogin.on('dateClick', insertModal);
calendarLogin.on('eventClick', datailSchedule);
calendarLogin.on('eventClick', updateSchedule);


// ------------------------------------------------------ [ 캘린더 핸들링 ]

/* datetimepicker 설정 및 적용 */
var datetimeOption = {
	 format: 'Y-m-d H:i:s', // 날짜 및 시간 형식
	 allowTimes: ['09:00','09:30', '10:00','10:30', '11:00','11:30','12:00','12:30',
		 '13:00','13:30','14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30',
		 '18:00','18:30','19:00','19:30','20:00','20:30','21:00']
	 
};

$.datetimepicker.setLocale('kr'); // 언어 설정 

$('.datetimepicker').datetimepicker(datetimeOption); // datetimepicker 로드

/* 일정등록 modal */
function insertModal(){
	$('#calendarModal').modal('show');
	insertSchedule();
}

/* 일정변경 modal */
function updateModal(){	
	
	modifyBtn.addEventListener('click', function(){
		
	btnGroup1.style.display = 'none';
    btnGroup2.style.display = 'block';
	 
	// 1. readonly 설정 삭제		
	updateTags.forEach(function(updateTag){
		updateTag.removeAttribute('readonly');
	})
	// 2. 시작일, 종료일 속성 변경	
	updateDates.forEach(function(updateDate){
		updateDate.type = 'text';
		updateDate.classList.add('updateTag');		
		updateDate.classList.add('form-control');		
		updateDate.classList.add('datetimepicker');		
	})
	
	$('.datetimepicker').datetimepicker(datetimeOption);
	
	// 3. 카테고리 속성 변경
    var selectElement = document.createElement('select');
    selectElement.id = 'calendar_category_detail';
    selectElement.name = 'cal_category';
    selectElement.style.width = '100%';
    selectElement.style.padding = '8px';

    var options = ['공지사항', '개인일정', '연차/휴가', '외근/출장'];
    options.forEach(function(optionText) {
        var option = document.createElement('option');
        option.value = optionText;
        option.text = optionText;
        selectElement.appendChild(option);
    });
    // 기존 input 태그 → select 태그로 변경
    category.parentNode.replaceChild(selectElement, category);	
	})

}



/* 일정 등록 */
//function insertSchedule(){
$('#addCalendar').on('click', function insertSchedule(){

	const formData = {
        cal_category: $('#calendar_category').val(),
        cal_title: $('#calendar_title').val(),
        cal_content: $('#calendar_content').val(),
        username: $('#calendar_writer').val(),
        cal_start: $('#calendar_start').val(),
        cal_end: $('#calendar_end').val(),
        user_id: $('#userID').val()
        
    };
    console.log('입력된 데이터 확인: ' + formData);
    
     $.ajax({
        type: 'POST',
        url: './insertSchedule.do',
        contentType: 'application/json',
        data: JSON.stringify(formData),
        success: function(response) {
            console.log("서버 응답:", response);
            if (response) {
                calendarLogin.addEvent({
                    id: formData.cal_no,
                    title: formData.cal_title,
                    start: formData.cal_start,
                    end: formData.cal_end,
                    description: formData.cal_content,
                    extendedProps: {
                            category: formData.cal_category,
                            writer: formData.username
                        }
                });
                
                $('#calendarModal').modal('hide');
                $("#form")[0].reset();
            } else {
                alert("일정 등록에 실패했습니다.");
                $("#form")[0].reset(); // 폼 초기화
            	$("#addCalendar").modal("hide");
            }
        },
        error: function(error) {
            console.error("에러 발생:", error);
            alert("서버 오류가 발생했습니다.");
        }
    });
 
});
//}


/* 일정 상세보기 */
function datailSchedule(info){
	var cal_no = info.event.id;
	var user_id = $('#userID').val();
		 $.ajax ({
			url: './getDetailSchedule.do',
			type: 'GET',
			data: { 
				cal_no: cal_no, 
				user_id: user_id
				},
			success: function(scheduleInfo) {
			 $('#calendar_category_detail').val(scheduleInfo.cal_category);
             $('#calendar_title_detail').val(scheduleInfo.cal_title);
             $('#calendar_content_detail').val(scheduleInfo.cal_content);
             $('#calendar_writer_detail').val(scheduleInfo.username);
	 	     $('#calendar_start_detail').val(scheduleInfo.cal_start);
		     $('#calendar_end_detail').val(scheduleInfo.cal_end);
			  
			  $('#scheduleModal').modal('show');
			},
			error: function(){
				alert('일정 정보를 불러오는 데 실패했습니다.');
			}
		});
}


    
/* 일정 삭제 */  
function delSchedule(info){
	  delBtn.addEventListener('click', function() {
      if (confirm("일정을 정말 삭제하시겠습니까?")) {
          $.ajax({
              url: './delSchedule.do',
              type: 'PUT',
              contentType: 'application/json',
              data: JSON.stringify({ cal_no: info.event.id }),
              success: function(response) {
                  if (response) {
                      info.event.remove();
                      $("#scheduleModal").modal("hide");
                  }
              },
              error: function(error) {
                  alert('일정 삭제에 실패하였습니다.', error);
              }
          });
       }
   });
}
     
     

/* 일정 변경 */
function updateSchedule(info){
	updateBtn.addEventListener('click', function(){
	 const formData = {
                cal_no: info.event.id,
                cal_category: $('#calendar_category_detail option:selected').text(),
                cal_title: $('#calendar_title_detail').val(),
                cal_content: $('#calendar_content_detail').val(),
                cal_writer: $('#calendar_writer_detail').val(),
                cal_start: $('#calendar_start_detail').val(),
                cal_end: $('#calendar_end_detail').val()
            };
     console.log(formData);
     
     $.ajax({
            type: 'PUT',
            url: './updateSchedule.do',
            contentType: 'application/json',
            data: JSON.stringify(formData),
            success: function(response) {
                console.log("서버 응답:", response);
                if (response) {
                    var event = calendar.getEventById(formData.cal_no);
                    event.setProp('title', formData.cal_title);
                    event.setStart(formData.cal_start);
                    event.setEnd(formData.cal_end);
                    event.setExtendedProp('description', formData.cal_content);

                    alert("일정 변경에 성공했습니다.");
                    $('#scheduleModal').modal('hide');
                } else {
                    alert("일정 변경에 실패했습니다.");
                    $('#scheduleModal').modal('hide');
                }
            },
            error: function(error) {
                console.error("에러 발생:", error);
                alert("서버 오류가 발생했습니다.");
            }
        })
	})
}
 
