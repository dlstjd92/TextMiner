// 모달창 열기/닫기 함수
function toggleModal() {
  var modal = document.getElementById("keyword-modal");
  modal.style.display = modal.style.display === "block" ? "none" : "block";
}

// 관심 키워드 선택 완료 버튼 클릭 이벤트 핸들러
  document.getElementById("keyword-form").addEventListener("submit", function (event) {
  event.preventDefault(); // 폼 기본 동작 방지

  // 선택된 키워드들을 배열로 저장
  var selectedKeywords = [];
  var checkboxes = document.getElementsByName("keyword");
  for (var i = 0; i < checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      selectedKeywords.push(checkboxes[i].value);
    }
  }

  // 선택된 키워드들을 버튼에 표시
  var keywordButton = document.getElementById("keyword-button");
  if (selectedKeywords.length === 0) {
    keywordButton.innerHTML = "해시태그 등록";
    keywordButton.classList.remove("selected");
  } else {
    keywordButton.innerHTML = selectedKeywords.join(", ");
    console.log(keywordButton)
    keywordButton.value = selectedKeywords.join(", ");
    //keywordButton.setAttribute("hash", "전송");
    
    keywordButton.classList.add("selected");
  }


 
  
  toggleModal(); // 모달창 닫기
});

// 관심 키워드 선택 버튼 클릭 이벤트 핸들러
document.getElementById("keyword-button").addEventListener("click", function () {
  toggleModal(); // 모달창 열기
});

// 회원가입 폼 submit 이벤트 핸들러
document.getElementById("signup-form").addEventListener("submit", function (event) {
  event.preventDefault(); // 폼 기본 동작 방지
  console.log("asfasfassaf");



 // 사용자 입력 데이터 수집
 //var username = document.getElementById("username").value;
  //var email = document.getElementById("email").value;
  //var keywords = [];
  //var checkboxes = document.getElementsByName("keyword");
  //for (var i = 0; i < checkboxes.length; i++) {
   // if (checkboxes[i].checked) {
   //   keywords.push(checkboxes[i].value);
    //}
  //}

  // 서버로 데이터 전송
 // var data = {
  //  username: username,
   // email: email,
    //keywords: keywords,
  //};
  //console.log(data); // 데이터 확인용. 실제 서버로 전송하는 코드로 변경해야 함
});
