<%@page import="com.smhrd.textminer.dto.JoinDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공시 메인 페이지</title>

    <link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" src="JS/changeText.js" defer></script>
    
    
</head>

<body class="scroll">
    <div id="wrap">
        <header class="header">
            <div class="headerConts">
                <div class="header_right">
                    <ul class="item">
                    <% JoinDTO dto;  
                     dto = (JoinDTO)session.getAttribute("login");
                    	String mb_id = dto.getMb_id();   %>
                    	
                    	
                        <li><a href="/board">지원사업 공고</a></li>
                        <%if () %>
                        <li><a href="/mypage">MY PAGE</a></li>
                        <li><a href="/">LOG OUT</a></li>
                        
                    </ul>
                </div>
            </div><!-- headerConts -->
        </header> <!-- header -->
<body>


</body>
</html>