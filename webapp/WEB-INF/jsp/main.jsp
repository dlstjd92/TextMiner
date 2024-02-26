<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.smhrd.textminer.dto.MainDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���� ������</title>

    <link rel="stylesheet" href="/css/main.css">
    <script type="text/javascript" src="JS/changeText.js" defer></script>
</head>

<body class="scroll">
    <div id="wrap">
        <header class="header">
            <div class="headerConts">
                <div class="header_right">
                    <ul class="item">
                        <li><a href="/board">������� ����</a></li>
                        <li><a href="/login">LOG IN</a></li>
                        <li><a href="/signin">SIGN IN</a></li>
                    </ul>
                </div>
            </div><!-- headerConts -->
        </header> <!-- header -->
        <div class="mainWrap">
            <div class="main">
                <div class="maintopWrap">
                    <div class="main_left">
                        <a href="/"><img class="logo_img" src="../image/logo.png" /></a>
                        <p class="ment1">������� ���� ��Ī ����Ʈ</p>
                        <p class="ment2">������ �´� ������� ���� �˻��� ������!</p>
                        <form action="#">
                            <input class="search__input" type="text" placeholder="�˻�� �Է����ּ���.">
                        </form>
                    </div>
                    <div class="main_right">
                        <img src="../image/main_bg.png">
                    </div>
                </div><!--maintopWrap-->
                <div class="main_bottomWrap">
                    <div class="keyword_wrap">
                        <div class="keyword">
                          <!--   <a href="#" class="button btnFloat btnLightBlue" onclick="changeText()">���� ����о�</a>
                            <a href="#" class="button btnFloat2 btnLightBlue" onclick="changeText()">���� ����ü</a> -->
                        </div>
                    </div>
                    <div class="main_bottom scroll">
                        <div class="bottom_wrap">
                        
                        <% 
                         
                         List<MainDTO> list = (List<MainDTO>)session.getAttribute("list");%>
                         	
                        <% 
                        
                        	Random rd = new Random();
                        
                        	for (int i = 0; i <= 3; i++ ) {
                        	
                        	MainDTO dtotwo = list.get(rd.nextInt(50));
                        	
                        	int seq = dtotwo.getB_seq();
                        	String title = dtotwo.getB_title();
                        	Date sdate = dtotwo.getB_sdate();
	                    	Date edate = dtotwo.getB_edate();
	                    	String conts = dtotwo.getB_conts();
	                    	
	                    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	                    	Date transSdate = dtotwo.getB_sdate();
	                    	String tSdate = dateFormat.format(transSdate);
		                    Date transEdate = dtotwo.getB_edate();
		                    String tEdate = dateFormat.format(transEdate);
	                    	
                        %>
                            <div class="box">
                                <!-- <h4 class="txt_head" id="head1">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4> -->
                                <h4 class="txt_head" id="head1"><a href="/conts1?b_seq=<%=seq%>"><%=title %></a></h4>
                                <!-- <p class="txt_date" id="date1">2023.03.24~2023.04.27</p> -->
                                <p class="txt_date" id="date1"> <%=sdate %> ~ <%= edate %></p>
                    <!--             <p class="txt_contents" id="contents1-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents1-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents1-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p> -->
                                <p class="txt_contents" id="contents1-1">�� <%= conts %></p>
                                <<!-- p class="txt_contents" id="contents1-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents1-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p> -->
                            </div>
                            
                            <%} %>
                            
                            <!-- <div class="box">
                                <h4 class="txt_head" id="head2">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date2">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents2-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents2-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents2-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div>
                            <div class="box">
                                <h4 class="txt_head" id="head3">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date3">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents3-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents3-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents3-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div>
                            <div class="box">
                                <h4 class="txt_head" id="head4">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date4">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents4-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents4-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents4-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div> -->
                        </div>
                        <div class="bottom_wrap display_none">
                        
                        <% 
                        
                        	Random rdone = new Random();
                        
                        	for (int i = 0; i <= 3; i++ ) {
                        	
                        	int randomIndex = rdone.nextInt(50) + 51;
                        	
                        	MainDTO dtotwo = list.get(randomIndex); // ������
                        
                        	int seq = dtotwo.getB_seq();
                        	String title = dtotwo.getB_title();
                        	Date sdate = dtotwo.getB_sdate();
	                    	Date edate = dtotwo.getB_edate();
	                    	String conts = dtotwo.getB_conts();
	                    	
	                    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	                    	Date transSdate = dtotwo.getB_sdate();
	                    	String tSdate = dateFormat.format(transSdate);
		                    Date transEdate = dtotwo.getB_edate();
		                    String tEdate = dateFormat.format(transEdate);
	                    	
                        %>
                        
                            <div class="box">
                                <!-- <h4 class="txt_head" id="head1">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4> -->
                                <h4 class="txt_head" id="head1"><a href="/conts1?b_seq=<%=seq%>"><%=title %></a></h4>
                                 <!-- <p class="txt_date" id="date1">2023.03.24~2023.04.27</p> -->
                                <p class="txt_date" id="date1"> <%=sdate %> ~ <%= edate %></p>
                                <!--             <p class="txt_contents" id="contents1-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents1-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents1-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p> -->
                                <p class="txt_contents" id="contents1-1">�� <%= conts %></p>
                            </div>
                            
                            <%} %>
                            
<!--                             <div class="box">
                                <h4 class="txt_head" id="head6">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date6">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents6-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents6-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents6-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div>
                            <div class="box">
                                <h4 class="txt_head" id="head7">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date7">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents7-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents7-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents7-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div>
                            <div class="box">
                                <h4 class="txt_head" id="head8">2022�� ���� �糭��� ������ʽ��� ���� �ȳ�</h4>
                                <p class="txt_date" id="date8">2023.03.24~2023.04.27</p>
                                <p class="txt_contents" id="contents8-1">�� ������� : �����糭 ��� ���� ��ʽ��� 200����, �� 1,100����</p>
                                <p class="txt_contents" id="contents8-2">- ���� 5�ð��̳�(����� ���о���)</p>
                                <p class="txt_contents mb00" id="contents8-3">* �Ĵ�, ���� ������ �ٹ��� ���� ����</p>
                            </div>
                        </div> -->
                    </div><!-- main_bottomWrap -->
                </div><!-- main_bottomWrap -->
            </div> <!-- main -->
        </div><!-- mainWrap -->
        <div class="footer">
            <div class="fooeterConts">
                <p id="p_logo">match-up</p>
                <p id="p_ment">���� ���� ������ 31-15 3�� <span>062-655-3509,9</span></p>
                <p id="p_ment">Copyright��2023 Team TextMiner.AllRightReserved.</p>
            </div><!-- footerConts -->
        </div><!-- footer -->
    </div><!-- #wrap -->

</body>
</html>