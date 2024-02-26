// $(document).ready(function(){
 
//  $('#myLink').click(function(){
        //;
//    })
    
//})



const link = document.getElementById('myLink');
link.addEventListener('click', function(event) {
  event.preventDefault();
  //alert('스크랩하셨습니다.');
 
  AjaxConGet()
});
 
function AjaxConGet(){
	
	
	//alert(b_seq);
	
    var url = "/AjaxCon";
    $.ajax({
        type:"GET", // 겟으로 해도됨
        url:url, // 서블릿 유알엘 매핑값
        dataType:"text", // 받아올때 데이터 타입
        data:{  // 보낼데이터 ()
            //name : $('#ajaxConName').val(),
            //age : $('#ajaxConAge').val(), 
            seq : b_seq
        },
        success : function(data){ // 성공했을때
           // alert('ajax GET 통신 성공');
            
            if(data == "성공"){
				alert('스크랩 하셨습니다!');
			}else{
				alert('실패');
			}
			
            //var $div = $('<div></div>');
            //var text = document.createTextNode(data);
            //$div.append(data);
            //$div.appendTo($('#myDiv'))
        
        },
        error : function(request,status,error){ // 통신자체 실패했을때
            alert('code:'+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); //에러 상태에 대한 세부사항 출력
            alert(e);
        }
    })
    
}