<%@page import="com.smhrd.textminer.dto.JoinDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.textminer.mapper.BoardMapper"%>
<%@page import="com.smhrd.textminer.dto.BoardDTO"%>
<%@page import="com.smhrd.textminer.dto.contsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공고 세부내용 게시판</title>
    
    <link rel="stylesheet" href="css/conts.css">
    <!-- <script type="text/javascript" src="JS/alert.js" defer></script> -->

    <script type="text/javascript" src="JS/scrap.js" defer></script>
    <script type="text/javascript" src="JS/jquery-3.6.4.min.js" defer></script>

</head>
<body class="scroll">
<%  contsDTO conts = (contsDTO)session.getAttribute("conts");
	
 	int b_seq = conts.getB_seq();
    String b_keyword = conts.getB_keyword();
    String b_title = conts.getB_title();
    String b_or = conts.getB_or();
    String b_sor = conts.getB_sor();
    String b_conts = conts.getB_conts(); 
    String b_region = conts.getB_region();
    String b_url = conts.getB_url();
    Date b_sdate = conts.getB_sdate();
    Date b_edate = conts.getB_edate();
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Date transSdate =conts.getB_sdate();
	String tb_sdate = dateFormat.format(transSdate);
	Date transEdate = conts.getB_edate();
	String tb_edate = dateFormat.format(transEdate);
%> 
 
    <div id="wrap">
        <header class="header">
            <div class="headerConts">
                <div class="header_left">
                    <ul class="item">
                        <%
					
					JoinDTO dto;
					dto = (JoinDTO) session.getAttribute("dto"); 
					// String mb_id = dto.getMb_id();
					
					if(dto == null) { %>
					
						<li class="s_logo"><a href="/"><img
								src="image/head_logo.png"></a></li>
								
					<%} else {%>
					
						<li class="s_logo"><a href="main_loginsuccess"><img
								src="image/head_logo.png"></a></li>
						
					<%  } %>
                    </ul>
                </div>
                <div class="header_right">
                    <ul class="item">
                    
                        <%
                        
						 if(dto == null)  {%>
						
						<li><a href="/login">LOG IN</a></li>
                        <li><a href="/signin">SIGN IN</a></li>
						
						<%} else if( dto != null ){ %>
						
                        <li><a href="/mypage">MY PAGE</a></li>
						<li><a href="/logout">LOG OUT</a></li>
						
						<%} %>
                    </ul>
                </div>
            </div><!-- headerConts -->
        </header> <!-- header -->
        <div class="mainWrap">
            <div class="visual">
                <strong>지원사업 공고</strong>
            </div><!--visual -->
               
            <div class="main">
                <div class="contsWrap">
                    <div class="contsBox">
                        <div class="title_area">
                            <div class="float:left;">
                                <div class="category">
                                    <span class="c-blue"><%=b_keyword%></span>
                                    
                                </div>
                                <h2 class="title"><%=b_title%></h2>
                            </div>   
                        </div>
                        <div class="top_info">
                            <ul>
                                <li>2023.04.05</li><!-- 등록날짜!!!!!!!!!! -->
                            </ul>
                        </div>
                        <div class="view_cont">
                            <ul>
                                <li>
                                    <span class="s_title">지자체</span>
                                    <div class="txt"><%=b_or%></div>
                                </li>
                                <li>
                                    <span class="s_title">수행기관</span>
                                    <div class="txt"><%=b_sor%></div>
                                </li>
                                <li>
                                    <span class="s_title">신청기간</span>
                                    <div class="txt"><%=tb_sdate%> ~ <%=tb_edate%></div>
                                </li>
                                <li>
                                    <span class="s_title">사업개요</span>
                                    <div class="txt">
                                    	<p><%=b_conts%></p>
                                        <!-- <p>여행업체의 의무가입인 보증보험료 지원을 통해 도내 여행업체의 사기 진작과 안전한 여행환경 조성을 위하여 다음과 같이 도내 여행업 보증보험료 지원업체를 모집하오니 많은 관심과 참여 바랍니다.</p>
                                        <p><br></p>
                                        <p>- 제주특별자치도내 등록된 여행업체</p>
                                        <p>- 도내 여행업 의무가입 영업보증 보험료 지원</p>
                                        <p>- 보증보험료 납입금액의 50%지원(업체당 최대 30만 원 한도)</p>
                                        <p>- 공제기간 시작일 : 2023.1.1 ~ 12.31에 한함</p> -->
                                    </div>
                                </li>
                            </ul>
                        </div><!-- view_cont -->
                        
                        
                        
                        
                        
                        
                        <div class="tag_list">
                            <ul class="tag_ul_list">
                                <li><span>#<%=b_keyword%></span></li>
                                <li><span>#<%=b_region%></span></li>
                            </ul>
                        </div><!-- tag_list -->
                        <div class="btn_area2">
                            <a href="/board" class="basic_btn03 btn_sky_bg">목록</a>
                            
                            <script>
                            var b_seq = <%=b_seq %> // 게시글 번호 넘기기용
                            </script>
                            
                            <!-- !!!!!!인성님 도와주세요!!!!!!!! 찜기능 어케 만드나요 ㅜ-->
                            <a id="myLink" class="ajaxConGetButton basic_btn03 btn_sky_bg">스크랩</a>
                            
                            <a href="<%=b_url%>" target="_blank" class="basic_btn03 btn_sky_bg">출처 바로가기</a>
                        </div><!-- btn_area2 -->
               
                    </div> <!-- contsBox -->
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