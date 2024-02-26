<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지</title>

  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.print.min.css' rel='stylesheet' media='print' />
  <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
  <!--  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale-all.min.js' rel='stylesheet' />-->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js'></script>
  <link rel="stylesheet" href="css/mypage_calendar.css">   <!-- css 연결 위치 -->
 <script type="text/javascript" src="JS/calendar.js" defer></script> 
  <script type="text/javascript" src="JS/del.js" defer></script>

</head>

<body class="scroll">
  <div id="wrap">
      <header class="header">
          <div class="headerConts">
              <div class="header_left">
                  <ul class="item">
                      <li class="s_logo"><a href="main_loginsuccess"><img src="../image/head_logo.png"></a></li>
                  </ul>
              </div>
              <div class="header_right">
                  <ul class="item">
                      <li><a href="/board">지원사업 공고</a></li>
                      <li><a href="/mypage">MY PAGE</a></li>
                      <li><a href="/logout">LOG OUT</a></li>
                  </ul>
              </div>
          </div><!-- headerConts -->
      </header> <!-- header -->
      <div class="mainWrap">
          <div class="visual">
              <strong>MY PAGE</strong>
          </div><!--visual -->
          <div class="main">
              <div class="contsWrap">
                <div class="topMenu">
                    <ul>
                        <li><a href="/mypage" class="menuLink">스크랩</a></li>
                        <li><a href="/mypage_member" class="menuLink">정보수정</a></li>
                        <li><a href="/mypage_member" class="menuLink">캘린더</a></li>
                    </ul>
                </div><!-- topMenu -->
                <div class="calendar_wrap">
                    <div class="menuName">
                        <p>캘린더</p>
                    </div><!-- menuName-->
                    <div class="calendarConts">
                        <div id='calendar'></div> 
                    </div><!-- calendarConts -->
                </div><!-- calendar_wrap -->
              </div> <!-- contsWrap -->
          </div> <!-- main -->
      </div><!-- mainWrap -->
      <div class="footer">
          <div class="fooeterConts">
              <p id="p_logo">match-up</p>
              <p id="p_ment">광주 동구 예술길 31-15 3층 <span>062-655-3509,9</span></p>
              <p id="p_ment">Copyrightⓒ2023 Team TextMiner.AllRightReserved.</p>
          </div><!-- footerConts -->
      </div><!-- footer -->
  </div><!-- #wrap -->
</body>
</html>
