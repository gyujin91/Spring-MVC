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
    <title>게시판 목록</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   
    <style>
        .boardList {
            width: 100%;
            clear: both;
        }
        .boardList h2 {
            text-align: center;
            margin-top: 50px;
            font-weight: bold;
        }

        .table {
            width: 1200px;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 25px;
        }

        .table thead th {
            padding-bottom: 15px;
            font-size: 25px;
        }

        .table th, td {
            text-align: center;
        }
        
        .input_group {
            text-align: center;
            margin: 50px 0 50px 0;
        }
        .input_group .btn {
            width: 100px;
            height: 50px;
        }
        .a_btn {
        width:1200px;
        margin: auto;
        text-align: center;
        padding-bottom: 50px;
        }
   		.btn {
   		width: 100px;
   		border-radius: 5px;
   		}
    </style>
</head>
<body>
    <%@ include file = "../include/header.jsp" %>
    <div class="boardList">
        <h2>게시판 목록</h2>
        <table class="table table-striped table-hover">
            <thead>
              <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>            
                  <th>등록일</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${boardList }" var="board">
            	<tr>
                	<td>${board.bno }</td>
                	<td><a href="${path1 }/board/read.do?bno=${board.bno }">${board.title }</a></td>
                	<td>${board.writer }</td>               	               	
                	<td>${board.regdate }</td>
               	</tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="a_btn">
    	<c:if test="${sid == 'admin' }">
            <a href="${path1 }/board/writeForm.do" class="btn btn-primary">글 등록</a>       
        </c:if> 
    </div>
    <%@ include file = "../include/footer.jsp" %> 
</body>
</html>