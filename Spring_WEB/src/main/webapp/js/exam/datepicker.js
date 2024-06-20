
// [ datetimepicker option ]

var datetimeOption = {
	 format: 'Y년 m월 d일 H:i', // 날짜 및 시간 형식
     // step: 30, // 시간 간격 (분 단위)
	 // sideBySide: true,
	 allowTimes: ['09:00','09:30', '10:00','10:30', '11:00','11:30','12:00','12:30',
		 '13:00','13:30','14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30',
		 '18:00','18:30','19:00','19:30','20:00','20:30','21:00'], 
	 
}

$.datetimepicker.setLocale('kr');
$('.datetimepicker').datetimepicker(datetimeOption);


/* [ datepicker option ] 

var dateOption = {
	 changeMonth: true,
     changeYear: true,
     dateFormat: 'yy/mm/dd',
     showMonthAfterYear: true,
     yearSuffix: "년", //달력의 년도 부분 뒤 텍스트
     monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
     monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
     dayNamesMin: ['일','월','화','수','목','금','토'],
     dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
     timeFormat:'HH:mm:ss',
     controlType:'select',
     oneLine:true,
} */


