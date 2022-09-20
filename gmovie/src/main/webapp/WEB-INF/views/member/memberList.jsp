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
    <title>회원목록</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .memberInfo {
            width: 100%;
            clear: both;
        }
        .memberInfo h2 {
            text-align: center;
            margin-top: 50px;
            font-weight: bold;
        }

        .table {
            width: 1200px;
            margin: auto;
            margin-top: 50px;
            margin-bottom: 150px;
        }

        .table thead th {
            padding-bottom: 15px;
            font-size: 25px;
        }

        .table th, td {
            text-align: center;
        }

        .update-btn {
            margin-right: 5px;
            width: 80px;
            height: 30px;
            border: 1px solid #e2e2e2;
            box-shadow: 1px 1px 1px 0 rgb(0 0 0 / 20%);
            cursor: pointer;
        }
        .update-btn img {
            margin-right: 5px;
            width: 20px;
            height: 20px;
        }

        .delete-btn {
            width: 80px;
            height: 30px;
            border: 1px solid #e2e2e2;
            box-shadow: 1px 1px 1px 0 rgb(0 0 0 / 20%);
            cursor: pointer; 
        }

        .delete-btn img {
            margin-right: 5px;
            width: 20px;
            height: 20px;
        }   

      
    </style>
</head>
<body>
    <%@ include file = "../include/header.jsp" %>
    <div class="memberInfo">
        <h2>회원 목록</h2>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>관리</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${memberList }" var="member" varStatus="status">
                <tr>
                    <td>${member.userid }</td>
                    <td>${member.userpw }</td>
                    <td>${member.username }</td>
                    <td>${member.tel }</td>
                    <td>${member.email }</td>
                    <td>
                        <a href="${path1 }/member/update.do">
                            <button type="button" class="update-btn"><img src="${path1 }/resources/imgs/update.png" alt="수정">수정</button>
                        </a>
                       	<a href="${path1 }/member/adminDelete.do?userid=${member.userid }">
                            <button type="button" class="delete-btn"><img src="${path1 }/resources/imgs/delete.png" alt="삭제">삭제</button>
                    	</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    
    <%@ include file = "../include/footer.jsp" %>   
</body>
</html>