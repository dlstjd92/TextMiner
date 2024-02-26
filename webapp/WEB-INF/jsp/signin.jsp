<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>

    <link rel="stylesheet" href="css/signin.css">
    <link rel="stylesheet" href="css/sign_modal.css">
    <link rel="stylesheet" href="css/sign_checkbox.css">
	<script type="text/javascript" src="JS/hashtag_modal.js" defer></script>
</head>

<body>
    <div class="pageWrap">
        <div class="loginPage">
            <div class="loginWrap">
                <div class="leftWrap">
                    <form action="/" method="post" class="join_form">
                        <a href="/">
                            <h1>match-up</h1>
                        </a>
                        
                        <h2>Sign in</h2>
                        <ul class="top">
                            <li><input type="text" placeholder="아이디를 입력해주세요" name="mb_id" required maxlength="30"></li>
                            <li><input type="password" placeholder="비밀번호를 입력해주세요" name="mb_pw" required maxlength="30">
                            </li>
                            <li><input type="text" placeholder="이름을 입력해주세요" name="mb_name" required maxlength="30"></li>
                            <li><input type="text" placeholder="E-mail을 입력해주세요" name="mb_email" required maxlength="30">
                            </li>
                            <li><input type="text" placeholder="기업 명 을 입력해주세요" name="mb_firm" required maxlength="30">
                            </li>
                            
                            <li><input type="text" placeholder="전화번호를 입력해주세요" name="mb_call" required maxlength="30"></li>
                              <li>
                                <p class="hash_p">원하는 해시태그를 등록해 보세요</p>
                                <input type="checkbox" id="keyword-button" name="hash" value="해시태그 등록" >
                            </li>
                            <li><input type="submit" value="SIGN IN"></li>
                        </ul>
                        <hr class="hr">
                        <p>이미 회원이신가요? <a href="/login"> 로그인 하기</a></p>
                    </form>
                </div><!--leftWrap-->
                <div id="keyword-modal" class="modal">
                    <div class="modal-content">
                        <h2>관심 해시태그 선택</h2>
                        <form id="keyword-form">  <!--여기가 바로 폼테그 시작-->
                            <div class="keywordformWrap">
                                <p>분야별 해시태그 (3개 선택)</p>
                               <div class="keywordform1">
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="제조업" id="keyword1">
                                        <label for="keyword1">
                                            <div class="title">제조업</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="에너지" id="keyword2">
                                        <label for="keyword2">
                                            <div class="title">에너지</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="클라우드" id="keyword3">
                                        <label for="keyword3">
                                            <div class="title">클라우드</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="통신/보안" id="keyword4">
                                        <label for="keyword4">
                                            <div class="title">통신/보안</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="네트워크" id="keyword5">
                                        <label for="keyword5">
                                            <div class="title">네트워크</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="금융" id="keyword6">
                                        <label for="keyword6">
                                            <div class="title">금융</div>
                                        </label>
                                    </div>
                                </div>
                                <div class="keywordform1">
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="바이오" id="keyword1-1">
                                        <label for="keyword1-1">
                                            <div class="title">바이오</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="뷰티" id="keyword2-1">
                                        <label for="keyword2-1">
                                            <div class="title">뷰티</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="시스템반도체" id="keyword3-1">
                                        <label for="keyword3-1">
                                            <div class="title">시스템반도체</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="농수산" id="keyword4-1">
                                        <label for="keyword4-1">
                                            <div class="title">농수산</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="패션" id="keyword5-1">
                                        <label for="keyword5-1">
                                            <div class="title">패션</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="헬스케어" id="keyword6-1">
                                        <label for="keyword6-1">
                                            <div class="title">헬스케어</div>
                                        </label>
                                    </div>
                                </div>
                                
                                <p>지역별 해시태그 (1개 선택)</p>
                                <div class="keywordform2">
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="서울" id="keyword7">
                                        <label for="keyword7">
                                            <div class="title">서울</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="인천" id="keyword8">
                                        <label for="keyword8">
                                            <div class="title">인천</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="부산" id="keyword9">
                                        <label for="keyword9">
                                            <div class="title">부산</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="대구" id="keyword10">
                                        <label for="keyword10">
                                            <div class="title">대구</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="대전" id="keyword11">
                                        <label for="keyword11">
                                            <div class="title">대전</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="광주" id="keyword12">
                                        <label for="keyword12">
                                            <div class="title">광주</div>
                                        </label>
                                    </div>
                                </div>
                                <div class="keywordform3">
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="울산" id="keyword13">
                                        <label for="keyword13">
                                            <div class="title">울산</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="세종" id="keyword14">
                                        <label for="keyword14">
                                            <div class="title">세종</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="경기도" id="keyword15">
                                        <label for="keyword15">
                                            <div class="title">경기도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="강원도" id="keyword16">
                                        <label for="keyword16">
                                            <div class="title">강원도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="충청북도" id="keyword17">
                                        <label for="keyword17">
                                            <div class="title">충청북도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="충청남도" id="keyword18">
                                        <label for="keyword18">
                                            <div class="title">충청남도</div>
                                        </label>
                                    </div>
                                </div>
                                <div class="keywordform4">
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="전라북도" id="keyword19">
                                        <label for="keyword19">
                                            <div class="title">전라북도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="전라남도" id="keyword20">
                                        <label for="keyword20">
                                            <div class="title">전라남도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="경상북도" id="keyword21">
                                        <label for="keyword21">
                                            <div class="title">경상북도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="경상남도" id="keyword22">
                                        <label for="keyword22">
                                            <div class="title">경상남도</div>
                                        </label>
                                    </div>
                                    <div class="form-element">
                                        <input type="checkbox" name="keyword" value="제주도" id="keyword23">
                                        <label for="keyword23">
                                            <div class="title">제주도</div>
                                        </label>
                                    </div>
                                </div>
                            </div><!-- keywordformWrap -->
                            <button class="confirm" type="submit">선택완료</button>
                        </form>
                    </div>
                </div><!--modal-->



                <div class="rightWrap">
                    <div class="right_img">
                        <img src="../image/signin_back.png" />
                    </div>
                </div><!--rightWrap-->

            </div><!--loginWrap-->
        </div><!-- loginPage -->
    </div><!-- pageWrap -->
</body>

</html>