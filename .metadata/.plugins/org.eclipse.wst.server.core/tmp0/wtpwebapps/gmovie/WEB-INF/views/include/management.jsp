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
    <title>윤리경영</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    


    
    <style>
        .content {
            width: 1200px;
            margin: auto;
            margin-top: 100px;
        }
        .content .top h2 {
            float: left;
            margin-right: 10px;
            font-weight: bold;
        }
        .content .cont {
            padding-top: 100px;
            position: relative;
            height: 500px;
        }
        .content .cont .textBox {
            position: absolute;
            top: 20%;
            left: 25%;
            z-index: 999;
        }
        .content .cont .textBox h2, .textBox p {
            font-weight: bold;
            font-size: 50px;
        }
        .content .cont .imgBox {
            position: absolute;
            top: 15%;
            right: 15%;
            z-index: -999;
        }
        .content .bottom {
           display: flex;
        }
        .content .item h3 {
            font-weight: bold;
        }
        .content .bottom .item1 {
            border: none;
            width: 450px;
            height: 150px;
            background-color: #f8f8f8;
            margin-right: 30px;
            padding: 20px;
            position: relative;
        }
        
        .content .bottom .item2 {
            border: none;
            width: 450px;
            height: 150px;
            background-color: #f8f8f8;
            margin-right: 30px;
            padding: 20px;
        }
        .content .bottom .item3 {
            border: none;
            width: 260px;
            height: 150px;
            background-color: #f8f8f8;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="content">
        <div class="top">
            <h2><a href="index.html">GMOVIE</a></h2>
            <h2>윤리경영</h2>
        </div>
        <div class="cont">
            <div class="textBox">
                <h2>윤리경영</h2>
                <p>GMOVIE가 지키고<br> 실천하겠습니다.</p>
            </div>
            <div class="imgBox">
                <img src="${path1 }/resources/imgs/mainbg_210330.jpg" alt="">
            </div>
        </div>
        <div class="bottom">
            <div class="item item1">
                <h3><a href="">신문고</a></h3>
                <p>
                    부정행위 및 성희롱 제보<br>부정과 무관한 고객 민원이나 음해성 투서는 제보 대상이 아닙니다.
                </p>
            </div>
            <div class="item item2">
                <h3><a href="">청렴센터</a></h3>
                <p>부정청탁 및 금품 등 수수의 금지에 관한 법률</p>
            </div>
            <div class="item item3">
                <h3><a href="">그룹 윤리규범</a></h3>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %> 
</html>