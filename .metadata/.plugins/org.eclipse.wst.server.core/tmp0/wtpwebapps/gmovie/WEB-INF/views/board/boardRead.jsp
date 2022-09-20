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
    <title>게시판 상세보기</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
         .detailBoard {
            width: 1200px;
            margin: auto;
            margin-bottom: 100px;
         }
         .detailBoard h2 {
            text-align: center;
            margin: 50px 0;
            font-weight: bold;
         }
        .detailBoard form {
            width: 800px;
            margin: auto;
        }
        .detailBoard .box1 input {
            width: 100px;
        }
        .detailBoard .box2 input {
            width: 200px;
        }
        .detailBoard .box3 textarea {
            height: 250px;
        }
        .detailBoard .box4 textarea {
            height: 250px;
        }
        .input_group {
            text-align: center;
            margin: 50px 0 50px 0;
        }
        .input_group .btn {
            width: 100px;
            height: 50px;
        }
    </style>
</head>
<body>
    <%@ include file = "../include/header.jsp" %>
    <div class="detailBoard">
        <h2>게시판 상세보기</h2>
        <form action="${path1 }/board/update.do" method="post">
            <div class="row mb-3 box1" >
                <label for="bno" class="col-sm-2 col-form-label">번호</label>
                <div class="col-sm-10">
                  <input type="number" class="form-control" id="bno" name="bno" value="${board.bno }" readonly>
                </div>
              </div>
            <div class="row mb-3">
              <label for="title" class="col-sm-2 col-form-label">제목</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="title" name="title" value="${board.title }" required>
              </div>
            </div>
            <div class="row mb-3 box2">
              <label for="writer" class="col-sm-2 col-form-label">작성자</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="writer" name="writer" value="${board.writer }" readonly>
              </div>
            </div>
            <div class="mb-3 box4">
                <label for="content" class="form-label">내용</label>
                <textarea class="form-control" name="content" rows="3" value="${board.content }" required></textarea>
            </div>
            <div class="input_group">
            <c:if test="${sid == 'admin' }">
                <input type="submit" value="수정" class="btn btn-primary">
                <input type="reset" value="취소" class="btn btn-danger">
                <a href="${path1 }/board/delete.do?bno=${board.bno }" class="btn btn-info">삭제</a>
            </c:if>
                <a href="${path1 }/board/list.do">
                    <input type="button 5" value="목록" class="btn btn-info">
                </a>
            </div>
          </form>
    </div>
    
    <%@ include file = "../include/footer.jsp" %>  
</body>
</html>