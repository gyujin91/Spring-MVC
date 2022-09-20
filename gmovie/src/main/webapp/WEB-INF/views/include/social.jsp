<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사회공헌</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    

    
    <style>
    body {
        margin: 0;
        padding: 0;
        height: 3000px;
    }
    section {
        position: relative;
        width: 100%;
        height: 2000px;
        background-image: linear-gradient(
            rgba(0, 0, 0, 0.6),
            rgba(0, 0, 0, 0.6)
        ), url(${path1 }/resources/imgs/galaxy-2150186.png);
        background-attachment: fixed;
        z-index: 0;
      }
      .social {
        position: absolute;
        top: 15%;
        left: 35%;
        transform: (-50%, -50%);
        z-index: 999;
        color: #ffffff;
        text-align: center;
      }
      .social h2 {
        font-weight: bold;
        font-size: 35px;
      }
      .social p {
        font-weight: bold;
        font-size: 20px;
        margin-top: 20px;
      }
      .social_cont {
        width: 1200px;
        margin: auto;
        padding-top: 100px;
      }
      .social_cont h2 {
        color: #503396;
        font-weight: bold;
      }
      .social_cont p {
        font-weight: bold;
      }
      .world {
        width: 1200px;
        margin: auto;
        padding-top: 30px;
      }
      .world img {
        border: 0;
        width: 800px%;
      }
      .countryList {
        width: 1200px;
        height: 2300px;
        margin: auto;
        padding-bottom: 100px;
      }
      .countryList .country {
        float: left;
        width: 550px;
        height: 320px;
        margin: 20px 30px 15px 0;
        position: relative;
      }
      .countryList .country .txt {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(0, 0, 0, 0.4);
        width: 220px;
        height: 220px;
        border-radius: 220px;
        text-align: center;
      }
      .countryList .country .txt h4 {
        color: #ffffff;
        padding-top: 60px;
        font-weight: bold;
        font-size: 28px;
      }
      .countryList .country .txt p {
        color: #ffffff;
        margin-top: 10px;
        font-weight: bold;
        font-size: 20px;
      }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
     <section>
        <div class="social">
            <h2>사회공헌</h2>
            <p>저개발 국가에 이동식 영화관과 한국영화를 지원합니다.</p>
        </div>
     </section>
    <div class="social_cont">
        <h2>영화가 필요한 그곳으로, 시네마천국</h2>
        <p>시네마천국 프로젝트는 영화를 접하기 힘든 저개발 국가에 이동식 영화관과 한국 영화를 지원하는 글로벌 사회공헌 활동입니다.<br>
            영화를 보는 즐거움이 더 나은 삶을 위한 씨앗이 되도록, 시네마천국은 영화가 필요한 그곳으로 찾아갑니다.</p>
    </div>
    <div class="world">
        <img src="${path1 }/resources/imgs/img-map-world.png" alt="">
    </div>
    <div class="countryList">
        <div class="country senegal">
            <img src="${path1 }/resources/imgs/bg-senegal.png" alt="">
            <div class="txt">
                <h4>세네갈</h4>
                <p>26회 상영<br>1,825명 관람</p>
            </div>
        </div>
        <div class="country cambodia">
            <img src="${path1 }/resources/imgs/bg-cambodia.png" alt="">
            <div class="txt">
                <h4>캄보디아</h4>
                <p>23회 상영<br>4,138명 관람</p>
            </div>
        </div>
        <div class="country nepal">
            <img src="${path1 }/resources/imgs/bg-nepal.png" alt="">
            <div class="txt">
                <h4>네팔</h4>
                <p>13회 상영<br>4,515명 관람</p>
            </div>
        </div>
        <div class="country ethiopia">
            <img src="${path1 }/resources/imgs/bg-ethiopia.png" alt="">
            <div class="txt">
                <h4>에티오피아</h4>
                <p>8회 상영<br>2,608명 관람</p>
            </div>
        </div>
        <div class="country jordan">
            <img src="${path1 }/resources/imgs/bg-jordan.png" alt="">
            <div class="txt">
                <h4>요르단</h4>
                <p>20회 상영<br>4,193명 관람</p>
            </div>
        </div>
        <div class="country nicaragua">
            <img src="${path1 }/resources/imgs/bg-nicaragua.png" alt="">
            <div class="txt">
                <h4>니카라과</h4>
                <p>4회 상영<br>600명 관람</p>
            </div>
        </div>
        <div class="country sri_lanka">
            <img src="${path1 }/resources/imgs/bg-sri_lanka.png" alt="">
            <div class="txt">
                <h4>스리랑카</h4>
                <p>2회 상영<br>500명 관람</p>
            </div>
        </div>
        <div class="country myanmar">
            <img src="${path1 }/resources/imgs/bg-myanmar.png" alt="">
            <div class="txt">
                <h4>미얀마</h4>
                <p>7회 상영<br>1,570명 관람</p>
            </div>
        </div>
        <div class="country rwanda">
            <img src="${path1 }/resources/imgs/bg-Rwanda.png" alt="">
            <div class="txt">
                <h4>르완다</h4>
                <p>35회 상영<br>6,900명 관람</p>
            </div>
        </div>
        <div class="country bangladesh">
            <img src="${path1 }/resources/imgs/bg-Bangladesh.png" alt="">
            <div class="txt">
                <h4>방글라데시</h4>
                <p>2회 상영<br>200명 관람</p>
            </div>
        </div>
        <div class="country peru">
            <img src="${path1 }/resources/imgs/bg-Peru.png" alt="">
            <div class="txt">
                <h4>페루</h4>
                <p>2회 상영<br>600명 관람</p>
            </div>
        </div>
        <div class="country ct_world">
            <img src="${path1 }/resources/imgs/bg-world.png" alt="">
            <div class="txt">
                <h4>총 11개국</h4>
                <p>142회 상영<br>27,649명 관람</p>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script type="text/javascript">
        $(window).scroll(function() {
            var scroll_position = $(window).scrollTop()/2;
            $('section').css({
                'background-position-x' : - scroll_position + 'px',
            })
        })
    </script> 
</html>