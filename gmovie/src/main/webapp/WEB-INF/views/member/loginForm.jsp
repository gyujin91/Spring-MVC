<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap');
    * {margin: 0; padding: 0; box-sizing: border-box;}
    body {
        font-family: 'Noto Sans KR', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: url(${path1}/resources/imgs/north-gd8c822961_1920.jpg) no-repeat center;
        background-size: cover;
    }
    body::before {
        content: "";
        position: absolute; z-index: 1;
        top: 0; right: 0; bottom: 0; left: 0;
        background-color: rgba(0, 0, 0, 0.7);
    }

    .login-form {position: relative; z-index: 2;}
    .login-form h1 {
        font-size: 32px; color: #fff;
        text-align: center;
        margin-bottom: 60px;
    }
    .int-area {width: 400px; position: relative; margin-top: 20px;}
    .int-area:first-child{margin-top: 0;}
    .int-area input {
        width: 100%;
        padding: 20px 10px 10px;
        background-color: transparent;
        border: none;
        border-bottom:1px solid #999;
        font-size:18px; color: #fff;
        outline: none;
    }
    .int-area label {
        position: absolute; left: 10px; top: 15px;
        font-size: 18px; color: #999;
        transition: all .5s ease;
    }

    .int-area label.warning {
        color: red; !important;
        animation: warning .3s ease;
        animation-iteration-count: 3;
    }
    @keyframes warning {
        0% {transform:  translateX(-8px);}
        25% {transform:  translateX(8px);}
        50% {transform:  translateX(-8px);}
        75% {transform:  translateX(8px);}
    }
    .int-area input:focus + label,
    .int-area input:valid + label {
        top: -2px;
        font-size: 13px; color: #166cea;
    }

    .btn-area {margin-top: 30px;}
    .btn-area button {
        width: 100%; height: 50px;
        background-color: #166cea;
        color: #fff;
        font-size: 20px;
        border: none;
        border-radius: 25px;
        cursor: pointer;
    }
    .caption {
        margin-top: 20px;
        text-align: center;
    }
    .caption a {
        font-size: 15px; color: #999;
        text-decoration: none;
    }
    </style>
</head>
<body>
	<c:if test="${!empty msg }">
	<script>
		alert("로그인 실패");
		document.loginForm.userid.focus();
	</script>
	</c:if>
    <section class="login-form">
        <h1>LOGIN</h1>
        <form action="${path1 }/member/signin.do" method="post" name="loginForm">
            <div class="int-area">
                <input type="text" name="userid" id="userid" autocomplete="off" required>
                <label for="userid">USER ID</label>
            </div>
            <div class="int-area">
                <input type="password" name="userpw" id="userpw" autocomplete="off" required>
                <label for="userpw">USER PASSWORD</label>
            </div>
            <div class="btn-area">
                <button id="btn" type="submit">LOGIN</button>
            </div>
        </form>
        <div class="caption">
            <a href="">Forgot Password?</a>
        </div>
    </section>
    
    <script>
        let id = $('#userid');
        let pw = $('#userpw');
        let btn = $('#btn');

        $(btn).on('click', function() {
            if($(id).val() == "") {
                $(id).next('label').addClass('warning');
                setTimeout(function() {
                    $('lable').removeClass('warning');
                },1500);
            }
            else if($(pw).val() =="") {
                $(pw).next('label').addClass('warning');
            }
        });
    </script>
    
    <script>
	function loginFaiure() {
		alert("로그인 실패");
	}
	</script>
</body>
</html>