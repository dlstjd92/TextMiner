<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>

    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="pageWrap">
        <div class="loginPage">
            <div class="loginWrap">
                <div class="leftWrap">
                    <form action="/login" method = "post">
                        <a href="/"><h1>match-up</h1></a>
                        <h2>Login</h2>
                        <ul class="top">
                            <li><input type="text" placeholder="아이디를 입력해주세요" name="mb_id" required maxlength="30"></li>
                            <li><input type="password" placeholder="비밀번호를 입력해주세요" name="mb_pw" required maxlength="30">
                            </li>
                            <li><input type="submit" value="LOG IN"></li>
                            <li>
                                <div id="id_save">아이디 저장 <input type="checkbox" name="id_save"></div>
                            </li>
                        </ul>
                        <hr class="hr">
                        <p>아이디가 없으신가요? <a href="/signin"> 회원가입 하기</a></p>

                    </form>

                </div>

                <div class="rightWrap">
                   
                </div>
            </div>


        </div>
    </div>
</body>
</html>