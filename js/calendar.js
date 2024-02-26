$(document).ready(function() {
	var calendar = $('#calendar').fullCalendar({
		// 캘린더 옵션
		selectable: true,
		selectHelper: true,
		editable: true,
		eventLimit: true,
		events: [
			// 일정 데이터
		],
		select: function(start, end) {
			// 일정 추가 모달창 열기
			var title = prompt('일정 제목:');
			var eventData;
			if (title) {
				eventData = {
					title: title,
					start: start,
					end: end
				};
				
		$.ajax({
            url: '/CalCon', // 서버의 API 엔드포인트 URL
            type: 'POST', // POST 방식으로 요청
            data: encodeURI(JSON.stringify(eventData)), // 선택한 날짜 정보를 JSON 형태로 보냄
            contentType: 'application/json', // 요청의 Content-Type 설정
            success: function(response) {
                console.log('일정이 성공적으로 저장되었습니다.', response);
            },
            error: function(error) {
                console.error('일정 저장에 실패하였습니다.', error);
            }
        });
				
				
				calendar.fullCalendar('renderEvent', eventData, true); // 일정 렌더링
			}
			calendar.fullCalendar('unselect');
			
		},
		editable: true,
		eventDrop: function(event, delta, revertFunc) {
			// 일정 이동시
		},
		eventResize: function(event, delta, revertFunc) {
			// 일정 리사이즈시
		},
		eventClick: function(event, jsEvent, view) {
			// 일정 클릭시

			
		}
	
	})
	
	
	
});


	