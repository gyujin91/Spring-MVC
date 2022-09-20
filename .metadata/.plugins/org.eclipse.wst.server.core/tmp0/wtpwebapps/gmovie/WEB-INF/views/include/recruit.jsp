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
    <title>인재채용</title>
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
        ), url(${path1 }/resources/imgs/nature-2689795_1920.jpg);
        background-attachment: fixed;
        z-index: 0;
      }
      .recruit {
        position: absolute;
        top: 15%;
        left: 35%;
        transform: (-50%, -50%);
        z-index: 999;
        color: #ffffff;
        text-align: center;
      }
      .recruit h2 {
        font-size: 35px;
        font-weight: bold;
      }
      .recruit p {
        font-weight: bold;
        font-size: 20px;
        margin-top: 20px;
      }
      .recruit_wrap {
        width: 1200px;
        margin: auto;
        margin-top: 100px;
        margin-bottom: 80px;
      }
      .recruit_wrap h2 {
        font-weight: bold;
      }
      .recruit_wrap p {
        font-weight: bold;
      }
      .recruit_wrap strong {
        font-weight: bold;
        color: #503396;
      }
      .gmovie_3c {
        width: 1200px;
        margin: auto;
        text-align: center;
        position: relative;
        margin-bottom: 100px;
      }
      .gmovie_3c strong {
        font-weight: 700;
        font-size: 1.647em;
      }
      .gmovie_3c p {
        color: #666666;
      }
      .gmovie_3c img {
        padding-top: 100px;
        width: 500px;
        height: 500p;
      }
      .gmovie_3c .txt01 {
        position: absolute;
        top: 5%;
        left: 46%;
      }
      
      .gmovie_3c .txt02 {
        position: absolute;
        left: 17%;
        top: 75%;
      }
      .gmovie_3c .txt03 {
        position: absolute;
        top: 75%;
        right: 15%;
      }
      .benefit {
        width: 100%;
        background-image: url(${path1 }/resources/imgs/bg-recruit-box02.png);
        height: 800px;
      }
      .benefit_wrap {
        width: 1200px;
        margin: auto;
        padding-top: 100px;
      }
      .benefit h2 {
        font-weight: bold;
      }
      .benefit_tit {
        color: #503396;
        font-weight: bold;
        font-size: 30px;
      }
      .tit_box {
        border: none;
        width: 260px;
        height: 260px;
        float: left;
        background-color: #ffffff;
        margin: 10px;
      }
      .tit {
        text-align: center;
        padding-top: 40px;
      }
      .tit h4 {
        font-size: 1.4em;
        line-height: 1.5;
        font-weight: bold;
      }
      .tit p {
        line-height: 1.3;
        color: #666666;
        font-weight: bold;
      }
      .recruitment {
        width: 1200px;
        margin: auto;
        margin-top: 100px;
      }
      .recruitment h2, p {
        font-weight: bold;
      }
      .procedure {
        width: 1200px;
        margin: auto;
        margin-top: 50px;
        height: 500px;
        position: relative;
      }
      .procedure h2 {
        color: #037b94;
        font-weight: bold;
      }
      .procedure ol li {
        display: inline-block;
      }
      .procedure ol li img {
        float: left;
        margin: 50px 105px 50px -40px;
      }
      .procedure ol li p {
        font-weight: bold;
        font-size: 20px;
      }
      .recu_info_box {
        width: 1200px;
        margin: auto;
        border: 3px solid #ebebeb;
        padding: 50px 50px 0 50px;
        
      }
      .recu_info_box h3 {
        color: #037b94;
        font-weight: bold;
      }
      .recu_info_box p {
        font-size: large;
        font-weight: bold;
        padding: 0 0 30px;  
      }
      .btn_group {
        width: 1200px;
        margin: auto;
        padding: 50px 0 120px 0;
      }
      .btn_group button {
        width: 100px;
        height: 50px;
      }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
     <section>
        <div class="recruit">
            <h2>인재채용</h2>
            <p>GMOIVE와 함께 내일을 만들어갈 인재를 기다립니다.</p>
        </div>
     </section>
     <div class="recruit_wrap">
        <h2>지무비HR</h2>
        <p>GMOVIE는 공감,창조,재미의 핵심가치를 기반으로 <strong>고객지향,도전의식,커뮤니케이션의 역량을 지닌 인재상을 추구합니다.</strong></p>
     </div>
    <div class="gmovie_3c">
        <img src="${path1 }/resources/imgs/3c.png" alt="3c">
        <div class="txt01">
            <strong>도전의식</strong>
            <p>Challenge</p>
        </div>
        <div class="txt02">
            <strong>고객지원</strong>
            <p>Customer oriented</p>
        </div>
        <div class="txt03">
            <strong>커뮤니케이션</strong>
            <p>Communication</p>
        </div>     
    </div>
    <div class="benefit">
        <div class="benefit_wrap">
            <h2>Benefit</h2>
            <p class="benefit_tit">지무비인이 되면 누릴 수 있는 특별한 Benefit!</p>
            <div class="tit_box">
                <div class="tit">
                    <h4>매일매일!<br>발전하는 지무비인</h4>
                    <p>자기개발지원<br>산학협력 대학교 입학<br>및 학비 할인<br>직무,교양 교육지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>여가와 문화를!<br>즐기는 지무비인</h4>
                    <p>문화,예술 공연관람 직원 제휴<br>동호회 지원<br>국내 콘도 지원<br>직원 영화관람 지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>몸도 마음도!<br>건강한 지무비인</h4>
                    <p>건강검진<br>의료비 지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>행복한 가정생활을!<br>하는 지무비인</h4>
                    <p>육아관련 보육비 지원<br>학자금 지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>기쁨,슬픔을 함께<br>나누는 지무비인</h4>
                    <p>직원 경조사 지원<br>상조용품지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>안정된 직장생활을<br>하는 메가인</h4>
                    <p>4대보험가입<br>퇴직연금제도<br>종업원 단체보험가입<br>심야 교통비 지원</p>
                </div>
            </div>
            <div class="tit_box">
                <div class="tit">
                    <h4>생동하는 지무비인</h4>
                    <p>임직원 하계휴가<br>상하반기 대체휴가<br>장기근속/우수직원 포상<br>명절 선물비 지급<br>창립 기념일 휴무<br>Workshop 지원</p>
                </div>
            </div>
        </div>
    </div>
    <div class="recruitment">
        <h2>지무비 공개채용</h2>
        <p>지무비는 새로운 콘텐트와 공간에 대한 도전으로, 누구나 쉽고 편안하게 공연을 즐길 수 있는 새로운 패러다임을 만들어 오고 있습니다.<br>
        지무비와 함께 내일을 만들어갈 인재를 기다립니다.</p>
    </div>

    <div class="procedure">
        <h2>채용절차</h2>
            <ol>
                <li>
                    <img src="${path1 }/resources/imgs/img-recu-step01.png" alt="">
                    <p>서류전형</p>
                </li>
                <li>
                    <img src="${path1 }/resources/imgs/img-recu-step02.png" alt="">
                    <p>인적성검사</p>
                </li>
                <li>
                    <img src="${path1 }/resources/imgs/img-recu-step03.png" alt="">
                    <p>실무 면접</p>
                </li>
                <li>
                    <img src="${path1 }/resources/imgs/img-recu-step04.png" alt="">
                    <p>임원 면접</p>
                </li>
                <li>
                    <img src="${path1 }/resources/imgs/img-recu-step05.png" alt="">
                    <p>최종합격</p>
                </li>
            </ol>
    </div>
    <div class="recu_info_box">
        <h3>입사지원</h3>
        <p>지원 접수는 지무비 채용홈페이지<a href="#">(http://recruit.gmovie.co.kr)</a>를 통해서만 접수가 가능합니다.</p>
        <h3>서류심사</h3>
        <p>
            지원자의 자기소개서 등을 종합적으로 평가하여 개인의 가치관이 메가박스가 지향하는 인재상과 얼마나 일치하는가를 검증합니다.<br>
            또한, 선택한 직무를 수행하는 데 필요한 능력을 얼마나 잘 갖추고 있으며, 다양한 경험을 토대로 자기개발을 해왔는지를 통해 지원자의 잠재 역량을<br>
            서면 평가합니다.
        </p>
        <h3>인적성검사</h3>
        <p>인적성검사를 통해 지원한 직무와 지원자의 적성이 얼마나 일치하는지 평가합니다.</p>
        <h3>면접전형</h3>
        <p>면접 전형은 서류전형, 실무 면접(1차), 임원 면접(2차)으로 구성되어 있습니다.<br>각 전형에 따라 면접 방식 및 전형단계가 변경될 수 있습니다.</p>
        <h3>채용시기</h3>
        <p>공석 발생 및 채용계획일정에 따라 개별적으로 안내할 예정입니다.</p>
    </div>
    <div class="btn_group">
        <button type="button" class="btn btn-primary">지원하기</button>
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