<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.smhrd.textminer.dto.myDTO"%>
<%@page import="com.smhrd.textminer.dto.BoardDTO"%>
<%@page import="java.util.List"%>
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

<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css'
	rel='stylesheet' />
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.print.min.css'
	rel='stylesheet' media='print' />
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
<link rel="stylesheet" href="css/mypage.css">
<!-- css 연결 위치 -->
<script type="text/javascript" src="JS/del.js" defer></script>

<%
JoinDTO dto = (JoinDTO) session.getAttribute("dto");

String mb_id = dto.getMb_id();

List<BoardDTO> list = (List<BoardDTO>) session.getAttribute("mypage");

myDTO mydto = (myDTO) session.getAttribute("mydto");

int cnt = mydto.getTotalCount();
int currentPage = 1;
if (request.getParameter("page") != null) {
	currentPage = Integer.parseInt(request.getParameter("page"));
}
int limit = mydto.getLimit();
int offset = mydto.getOffset();
int totalPage = mydto.getTotalpage();
%>
</head>

<body class="scroll">
	<div id="wrap">
		<header class="header">
			<div class="headerConts">
				<div class="header_left">
					<ul class="item">
						<li class="s_logo"><a href="main_loginsuccess"><img
								src="../image/head_logo.png"></a></li>
					</ul>
				</div>
				<div class="header_right">
					<ul class="item">
						<li><a href="/board">지원사업 공고</a></li>
						<li><a href="/mypage">MY PAGE</a></li>
						<li><a href="/logout">LOG OUT</a></li>
					</ul>
				</div>
			</div>
			<!-- headerConts -->
		</header>
		<!-- header -->
		<div class="mainWrap">
			<div class="visual">
				<strong>MY PAGE</strong>
			</div>
			<!--visual -->
			<div class="main">
				<div class="contsWrap">
					<div class="topMenu">
						<ul>
							<li><a href="/mypage" class="menuLink">스크랩</a></li>
							<li><a href="/mypage_member" class="menuLink">정보수정</a></li>
							<li><a href="/mypage_calendar" class="menuLink">캘린더</a></li>
						</ul>
					</div>
					<!-- topMenu -->
					<div class="menuName">
						<p>스크랩</p>
					</div>
					<!-- menuName-->
					<div clas="scrapTable">
						<table id="Table">
							<thead>
								<tr>
									<th>번호</th>
									<th>구분</th>
									<th>제목</th>
									<th>지자체</th>
									<th>기간</th>
									<th>삭제</th>
								</tr>
							</thead>

							<% 
							// 게시물 내용 출력하는 코드
							for(int i = 0; i < limit && i < list.size(); i++){
								BoardDTO bdto = list.get(i);
								
								int seq = bdto.getB_seq();
								String keyword = bdto.getB_keyword();
								String title = bdto.getB_title();
								String region = bdto.getB_region();
								Date sdate = bdto.getB_sdate();
								Date edate = bdto.getB_edate();
								
							
							
							// 데이터 날짜 폼 바꿔주는 코드
							SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
							Date transSdate = bdto.getB_sdate();
							String tSdate = dateFormat.format(transSdate);
							Date transEdate = bdto.getB_edate();
							String tEdate = dateFormat.format(transEdate);
							%>
							<tr>
								<td><%=seq%></td>
								<td class="ellipsis"><%=keyword%></td>
								<td><a href="/conts1?b_seq=<%=seq%>"><%=title %></a></td>
								
								<td><%=region%></td>
								<td><%=tSdate%> ~ <%=tEdate %></td>
								<td><a type="button" class="btn_delete" href = "/mydel?seq=<%=seq %>">삭제</a></td>
							</tr>
							<%
								}
							%>


							<!-- <tbody>
								<tr>
									<td>1</td>
									<td>지원사업공고</td>
									<td><a href="./conts.html">[제주] 2023년 도내 여행업 보증보험
											지원사업 안내 공고</a></td>
									<td>2023-04-07</td>
									<td>2023-04-07 ~ 2023-04-21</td>
									<td><button type="button" class="btn_delete">삭제</button></td>
								</tr>
								<tr>
									<td>2</td>
									<td>지원사업공고</td>
									<td><a href="./conts.html">[전국] 2023년 상생형 스마트상점 주관기관
											모집공고</a></td>
									<td>2023-04-07</td>
									<td>2023-04-07 ~ 2023-04-21</td>
									<td><button type="button" class="btn_delete">삭제</button></td>
								</tr> -->
							</tbody>
						</table>
					</div>
					<!-- scrapTable -->
				</div>
				<!-- contsWrap -->
			</div>
			<!-- main -->
		</div>
		<!-- mainWrap -->


		<%
		for (int i = 1; i <= totalPage; i++) {
		%>
		<%
		if (i == currentPage) {
		%>
		[<%=i%>]
		<%
		} else {
		%>
		<a href="mypage?page=<%=i%>">[<%=i%>]
		</a>
		<%
		}
		%>
		<%
		}
		%>



		<div class="footer">
			<div class="fooeterConts">
				<p id="p_logo">match-up</p>
				<p id="p_ment">
					광주 동구 예술길 31-15 3층 <span>062-655-3509,9</span>
				</p>
				<p id="p_ment">Copyrightⓒ2023 Team TextMiner.AllRightReserved.</p>
			</div>
			<!-- footerConts -->
		</div>
		<!-- footer -->
	</div>
	<!-- #wrap -->
</body>
</html>

