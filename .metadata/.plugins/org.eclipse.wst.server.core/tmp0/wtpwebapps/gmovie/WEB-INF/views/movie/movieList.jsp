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
    <title>영화전체보기</title>
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
      .movies {
        width: 1440px;
        margin: auto;
        margin-top: 100px;
      }
      .movies .list {
        display: inline-block;
        width: 340px;
        height: 750px;
        border: 1px solid rgba(0, 0, 0, .8);
        background-color: #121212;
        text-align: center;
        margin: 48px 8px;
        padding-top: 8px;
        box-shadow: rgb(204, 219, 232) 3px 3px 6px 0px inset, rgba(255, 255, 255, 0.5) -3px -3px 6px 1px inset;
        position: relative;
      }
      .movies .list:last-child(4n) {
        margin-left: 0;
      }
      .movies .list strong {
        position: absolute;
        left: 10%;
        top: 5%;
        font-size: 35px;
        font-style: italic;
        color: #fff;
        text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.9);
        z-index: 999;
        
      }
      .movies .list img {
        width: 320px;
      }
      .movies .list .tit {
        text-align: left;
        padding: 20px 0 0 20px;
        color: #adafae;
        font-weight: bold;
      }
      .movies .list .tit h3 {
        font-size: 25px;
        font-weight: bold;
      }
      .movies .list .tit p {
        margin-top: 25px;
        font-size: 20px;
      }
      .movies .list button {
        width: 100px;
        height: 50px;
        border: none;
        border-radius: 7px;
        margin: 30px 0;
        background-color: rgba(0, 0, 0, .5);
        color: #adafae;
        font-weight: bold;
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
        <div class="movies">
        <div class="list">
                <strong>1</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>토르:러브 앤 썬더</h3>
                    <p>평점:9/10</p>
                    <p>개봉일자:2022-06-30</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>2</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/topgun.jpg" alt="">
                 </a>
                <div class="tit">
                    <h3>탑건:매버릭</h3>
                    <p>평점:9.6/10</p>
                    <p>개봉일자:2022-06-22</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div> 
            <div class="list">
                <strong>3</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/Cbbh2AGtwN1cPDcXIb2TkcF2lgwWBUtl_420.jpg" alt="">
                </a>
                <div class="tit">
                    <h3>한산:용의출현</h3>
                    <p>평점:8.5/10</p>
                    <p>개봉일자:2022-07-27</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>4</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/8rQ7apqkUoMo3JE2D5XY3DgAcd4PovW1_420.jpg" alt="">
                </a>
                <div class="tit">
                    <h3>명탐정 코난:할로윈의 신부</h3>
                    <p>평점:9.0/10</p>
                    <p>개봉일자:2022-07-13</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>5</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/djm7aYuL9bQGZRsxyUH75wATz9ub9ouk_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>극장판 주술회전 0</h3>
                    <p>평점:8.9/10</p>
                    <p>개봉일자:2022-02-17</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>6</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/antH4SXCfejWo6FdMXRTUVp4ssxSINaj_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>[2022 시네도슨트] 브리티쉬 뮤지엄&내셔널 갤러리</h3>
                    <p>평점:9.3/10</p>
                    <p>개봉일자:2022-07-13</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>7</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/fpItHJAg7IOzxtez042463Gk0rPRkIiQ_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>[2022 클래식페스티벌] 브레겐츠 페스티벌-나비부인</h3>
                    <p>평점:0/10</p>
                    <p>개봉일자:2022-07-31</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>8</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/O3mxQblVEa4nbd8uq46Ovc8YGj6gik2g_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>로스트 도터</h3>
                    <p>평점:7.7/10</p>
                    <p>개봉일자:2022-07-14</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>9</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>범죄도시2</h3>
                    <p>평점:9/10</p>
                    <p>개봉일자:2022-05-18</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>10</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/k9yRSehUQSb98QZKnz7MJ5riaOJ8NTHE_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>외계+인 1부</h3>
                    <p>평점:6.8/10</p>
                    <p>개봉일자:2022-07-20</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            <div class="list">
                <strong>11</strong>
                <a href="${path1 }/movie/details.do">
                    <img src="${path1 }/resources/movieImgs/J4AfSbvwKUciwVWrxyln4Z7K1hMMfZv7_420.jpg" alt="">
                </a>
                    <div class="tit">
                    <h3>프리! 더 파이널 스트로크 후편</h3>
                    <p>평점:9/10</p>
                    <p>개봉일자:2022-06-30</p>
                </div>
                <a href="#"><button type="button">찜하기</button></a>
                <a href="#"><button type="button">예매하기</button></a>
            </div>
            
        </div>
       
   </div>
   
   

</body>
</html>