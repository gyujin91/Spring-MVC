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
    <title>영화상세보기</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .content {
            width: 100%;
            margin: auto;
            background-color: #111;
        }
        .section {
        width: 100%;
        height: 50px;
        margin: auto;
        text-align: center;
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        background-color: #FFB500;
      }
      .section .logo span {
        float: left;
        clear: both;
        padding-top: 4px;
        font-weight: bold;
        font-size: 25px;
      }
      .tab_list li{
        display: inline-block;
        margin: 10px 30px 10px 0;
        padding
      }
      .tab_list li a {
        font-weight: bold;
        font-size: large;
      }
      .details {
        width: 1440px;
        height: 1000px;
        margin: auto;
        background-image: linear-gradient(
            rgba(0, 0, 0, 0.8),
            rgba(0, 0, 0, 0.8)
        ), url(${path1}/resources/movieImgs/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        
      }
      .details .goBack {
        margin-bottom: 50px;
      }
      .details .goBack i {
        margin-top: 100px;
        font-weight: bold;
        font-size: 23px;
        color: #ffffff;
      }
      .imgBox {
        width: 30%;
        height: 600px;
        float: left;
        text-align: center;
      }
      .imgBox img {
        width: 400px;
        height: 600px;
      }
      .movieInfo {
        width: 60%;
        margin-left: 100px;
        float: left;
      }
      .movieInfo h2, strong, h3, p {
        font-weight: bold;
        color: #ffffff;
      }
      .movieInfo h2 {
        color: #FFB500;
      }
      .movieInfo h3 {
        margin-top: 40px;
      }
      .movieInfo p {
        margin-top: 15px;
      }
    </style>
</head>
<body> 
   <div class="content">
        <nav class="section">
            <div class="logo">
                <a href="${path1 }/">
                    <span>GMOVIE</span>
                </a>
            </div>
            <ul class="tab_list">
                <li><a href="#">인기영화</a></li>
                <li><a href="#">현재 상영작</a></li>
                <li><a href="#">상영 예정작</a></li>
                <li><a href="#">찜한 영화</a></li>
                <li><a href="#">최근본영화</a></li>
            </ul>
        </nav>
        <div class="details">
            <div class="goBack">
                <a href="${path1 }/movie/movieList.do"><i class="xi-arrow-left xi-x">뒤로가기</i></a>
            </div>
            <div class="imgBox">
                <img src="${path1 }/resources/movieImgs/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg" alt="">
            </div>
            <div class="movieInfo">
                <h2>토르:러브 앤 썬더</h2>
                <strong>Original Title : Thor:Love and Thunder</strong>
                <h3>영화줄거리</h3>
                <p>이너피스를 위해 자아 찾기 여정을 떠난 천둥의 신 토르. 그러나, 우주의 모든 신들을 몰살하려는 신 도살자 고르의<br>
                   등장으로 토르의 안식년 계획은 산산조각 나버린다. 토르는새로운 위협에 맞서기 위해, 킹 발키리, 코르그, 그리고 <br>
                   전 여자친구 제인과 재회하게 되는데. 그녀가 묠니르를 휘두르는 마이티 토르가 되어 나타나 모두를 놀라게 한다.<br>
                   이제, 팀 토르는 고르의 복수에 얽힌 미스터리를 밝히고 더 큰 전쟁을 막기 위한 전 우주적 스케일의 모험을 시작하는데...
                </p>
                <h3>태그라인</h3>
                <p>신을 죽이는자, 신이 상대한다!</p>
                <h3>장르</h3>
                <p>액션,모험,판타지</p>
                <h3>제조국</h3>
                <p>United States of America</p>
            </div>
        </div>   
   </div>
   
   

</body>
</html>