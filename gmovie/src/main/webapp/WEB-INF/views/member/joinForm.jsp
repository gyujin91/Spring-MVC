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
    <title>회원가입</title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap');
    * {margin: 0; padding: 0; box-sizing: border-box;}
    body {
        font-family: 'Noto Sans KR', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(${path1}/resources/imgs/moon-g8471bddc6_1920.jpg) no-repeat center;
        background-size: cover;
    }
    body::before {
        content: "";
        position: absolute; z-index: 1;
        top: 0; right: 0; bottom: 0; left: 0;
        background-color: rgba(0, 0, 0, 0.7);
    }
    .join-form {position: relative; z-index: 2;}
    .join-form h1 {
        font-size: 32px; color: #fff;
        text-align: center;
        margin-bottom: 20px;
        padding-top: 10px;
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

    .id_ok {
        color: #fff;
        display: none;
    }
    
    .id_already {
        color: red;
        display: none;
    }
    </style>
    
</head>
<body>
    <section class="join-form">
        <h1>JOIN</h1>
        <form action="${path1 }/member/join.do" method="post" onsubmit="return joinCheck(this)" name="joinForm">
            <div class="int-area">
                <input type="text" name="userid" id="userid" autocomplete="off" maxlength="20" required oninput="idCheck()">
                <label for="userid">ID</label>
            </div>
            <span class="id_ok">사용 가능한 아이디 입니다.</span>
			<span class="id_already">이미 사용중인 아이디 입니다.</span>
            
            
            <div class="int-area">
                <input type="password" name="userpw" id="userpw" autocomplete="off" required>
                <label for="userpw">PASSWORD</label>
            </div>
            <div class="int-area">
                <input type="password" name="userpw2" id="userpw2" autocomplete="off" required>
                <label for="userpw2">Confirm Password</label>
            </div>
            <div class="int-area">
                <input type="text" name="username" id="username" autocomplete="off" required>
                <label for="username">USER NAME</label>
            </div>
            <div class="int-area">
                <input type="tel" name="tel" id="tel" autocomplete="off" required>
                <label for="tel">TEL</label>
            </div>
            <div class="int-area">
                <input type="email" name="email" id="email" autocomplete="off" required>
                <label for="email">email</label>
            </div>
            <div class="btn-area">
                <button id="btn" type="submit">SIGN UP</button>
            </div>
            <div class="btn-area">
                <button type="reset">CANCEL</button>
            </div>
        </form>
    </section>
    
    <script>
        let id = $('#userid');
        let pw = $('#userpw');
        let pw2 = $('#userpw2');
        let name = $('#username');
        let tel = $('#tel');
        let email = $('email');
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
            } else if($(pw2).val() =="") {
                $(pw2).next('label').addClass('warning');
            } else if($(name).val() =="") {
                $(name).next('label').addClass('warning');
            } else if($(tel).val() =="") {
                $(tel).next('label').addClass('warning');
            } else if($(email).val() =="") {
                $(email).next('label').addClass('warning');
            }
        });
    </script>
    
    <!--  비밀번호 확인 -->
	<script type="text/javascript">
		function joinCheck(f) {
			if(f.userpw.value!=f.userpw2.value) {
				alert("비밀번호가 서로 일치 하지 않습니다.");
				return false;
			} 
		}
	</script>

	<!-- 아이디 중복 체크 -->
	<script type="text/javascript">
	  	  function idCheck() {
	      var userid = $('#userid').val(); /*id값이 "userid"인 입력란의 value 값을 변수 id에 저장 */
	      $.ajax({
	          url:"idCheck.do", // Controller에서 인식할 주소
	          type:"post",    // POST 방식으로 전달
	          date:{userid: userid},
	          dataType: 'json',
	          success:function(cnt) { // Controller에서 넘어온 cnt값을 받는다.
	              if(cnt != 1) { // cnt가 1이 아니면 (=0일 경우) -> 사용 가능한 아이디
	                  $('.id_ok').css("display", "inline-block");
	                  $('.id_already').css("display", "none");
	              } else {    // cnt가 1일 경우 -> 이미 존재하는 아이디
	                  $('.id_already').css("display", "inline-block");
	                  $('.id_ok').css("display", "none");
	              }
	          },
	          /* error:function() {
	              alert("에러입니다.");
	          } */
	      });
	  };
	</script>
    
</body>
</html>