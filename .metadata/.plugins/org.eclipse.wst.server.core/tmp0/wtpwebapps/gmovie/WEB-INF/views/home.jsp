<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 페이지</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
</head>
<body>
   <%@ include file="./include/header.jsp" %>
   <div id="content">  
        <div class="movieChartScreen">
            <h2>무비차트</h2>
            <a href="${path }/movie/movieList.do">
                <button type="button">전체보기</button>
            </a>
        </div>
        <div class="content_area">
                <ul class="list">
                    <li>
                        <div class="item">
                            <strong>1</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/topgun.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>2</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/Cbbh2AGtwN1cPDcXIb2TkcF2lgwWBUtl_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>3</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/t9AbCzKv1Syik1E15VKybp45tEwWr73a_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>4</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/8rQ7apqkUoMo3JE2D5XY3DgAcd4PovW1_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>5</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/antH4SXCfejWo6FdMXRTUVp4ssxSINaj_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>6</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/djm7aYuL9bQGZRsxyUH75wATz9ub9ouk_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>7</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/fpItHJAg7IOzxtez042463Gk0rPRkIiQ_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>8</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/J4AfSbvwKUciwVWrxyln4Z7K1hMMfZv7_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>9</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/wo9hN6dpVFiZHp4d3MpGmPEGTC0CE2yt_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>10</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/k9yRSehUQSb98QZKnz7MJ5riaOJ8NTHE_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>11</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/O3mxQblVEa4nbd8uq46Ovc8YGj6gik2g_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>

                     <li>
                        <div class="item">
                            <strong>12</strong>
                            <a href="#">
                                <img src="${path1 }/resources/movieImgs/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_420.jpg" alt="">
                            </a>
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn1">♡</button>
                            <button type="button" class="btn2">예매</button>
                        </div>
                     </li>
                </ul>       
        </div>
   </div>
   
   <%@ include file="./include/footer.jsp" %>
   

</body>
</html>