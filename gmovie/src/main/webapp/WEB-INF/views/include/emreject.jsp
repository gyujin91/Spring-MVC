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
        .content {
            width: 1200px;
            margin: auto;
            margin-top: 100px;
        }
        .content h3 {
            font-weight: bold;
            font-size: 20px;
        }
        .content .txtBox {
            border: 1px solid #e1ddd3;
            text-align: center;
            width: 800px;
            margin: auto;
            padding: 30px;
            margin: 100px 0;
        }
        .content .txtBox strong {
            font-size: 20px;
        }
        .content .txtBox strong, p {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="content">
        <h3>이메일주소 무단 수집 거부</h3>
        <div class="txtBox">
            <strong>GMOVIE는 회원님의 이메일주소를 매우 중요시 생각하며, 무단수집에 거부합니다.</strong><br><br>
            <p>본 웹사이트에 게시된 이메일주소가 전자우편수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며,<br>
                이를 위반 시 정보통신망법에 의해 형사처벌 됨을 유념하시기 바랍니다.</p>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
</html>