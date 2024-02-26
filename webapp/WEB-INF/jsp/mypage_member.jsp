<%@page import="com.smhrd.textminer.dto.JoinDTO"%>
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
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.print.min.css' rel='stylesheet'
        media='print' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
    <link rel="stylesheet" href="css/mypage_member.css"> <!-- css 연결 위치 -->

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
                     <%  JoinDTO dto = (JoinDTO)session.getAttribute("dto");
                    	String mb_id = dto.getMb_id();   %>
                    	
                    	
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
                            <li><a href="/mypage_calendar" class="menuLink">캘린더</a></li>
                        </ul>
                    </div><!-- topMenu -->
                    <div class="scrapTable">
                        <div class="menuName">
                            <p>정보수정</p>
                        </div><!-- menuName-->
                        <form action="/userCon" method="post">
                            <table>
                                <colgroup>
                                    <col class="w_1">
                                    <col class="w_2">
                                </colgroup>
                                <% 
                                	mb_id = dto.getMb_id();
                                	String mb_name = dto.getMb_name();
                                	String mb_pw = dto.getMb_pw();
                                	String mb_call = dto.getMb_call();
                                	String mb_email = dto.getMb_email();
                                	String mb_firm = dto.getMb_firm();
                                %>
                                
                                <tbody>
                                    <tr>
                                        <th >아이디</th>
                                        <td class="top-td" name="idNb"><%=mb_id %></td>
                                    </tr>
                                    <tr>
                                        <th >
                                            <label>이름</label>
                                        </th>
                                        <td><%=mb_name %></td>
                                    </tr>
                                     <tr>
                                        <th>
                                            <label>비밀번호</label>
                                        </th>
                                        <td><input type="text" placeholder=" 수정 하실 비밀번호를 입력해주세요" name="pwNb"></td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>휴대전화</label>
                                        </th>
                                        <td><input type="text" value="<%=mb_call %>" placeholder = "수정하실 전화번호를 입력해주세요" name="phoneNb"></td>
                                    </tr>
                                    <tr>
                                        <th >
                                            <label>E-MAIL</label>
                                        </th>
                                        <td><input type="text" value="<%=mb_email %>" placeholder = "수정하실 이메일을 입력해주세요" name="emailNb"></td>
                                    </tr>
                                    <tr>
                                        <th class="bottom-td">
                                            <label>기업 명</label>
                                        </th>
                                        <td class="bottom-td"><input type="text" value="<%=mb_firm %>" placeholder = "수정하실 회사명을 입력해주세요" name="FirmNb"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn">
                                <input type="submit" name="submitType" value="정보수정">
                                <input type= "submit" name="submitType" value="회원탈퇴">
                               <a href=/mypage class="btn_cancle">취소</a>
                            </div>
                        </form>
                    </div><!-- scrapTable -->
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