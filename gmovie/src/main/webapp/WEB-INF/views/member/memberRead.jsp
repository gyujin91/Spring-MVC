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
    <title>회원목록</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <style>
      .updateMember {
        width: 100%;
        clear: both;
      }
      .updateMember h2 {
        text-align: center;
        margin-top: 50px;
      }
      .form-floating {
        width: 800px;
        margin: auto;
      }
      .btn_group {
        width: 800px;
        margin: auto;       
        margin: 20px;
      }
      .btn_group > input {
        width: 80px;
        height: 50px;
        margin: 5px;
      }
      .btn_group > a {
        border-radius: 5px;
        background-color: #6495ED;
        color: #ffffff;
        padding: 14px 20px;
        text-align: center;
        margin: 5px;
      }
    </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>
        <div class="updateMember">
            <h2>회원 정보 수정</h2>      
                <form class="form-floating" action="${path1 }/member/update.do" method="post" onsubmit="return updateCheck(this)" class="form-floating">                
                    <div class="mb-3 row">
                      <label for="staticUserid" class="col-sm-2 col-form-label">아이디</label>
                      <div class="col-sm-10">
                        <input type="text" name="userid" readonly class="form-control-plaintext" id="staticUserid" value="${member.userid }">
                      </div>
                    </div>
                    <div class="mb-3 row">
                      <label for="userpw" class="col-sm-2 col-form-label">비밀번호</label>
                      <div class="col-sm-10">
                        <input type="password" name="userpw" class="form-control" id="userpw" value="${member.userpw }" required>
                      </div>
                    </div>
                    <div class="mb-3 row">
                      <label for="userpw2" class="col-sm-2 col-form-label">비밀번호 확인</label>
                      <div class="col-sm-10">
                        <input type="password" name="userpw2" class="form-control" id="userpw2" value="${member.userpw }" required>
                      </div>
                    </div>
                    <div class="mb-3 row">
                      <label for="username" class="col-sm-2 col-form-label">이름</label>
                      <div class="col-sm-10">
                        <input type="text" name="username" class="form-control" id="username" value="${member.username }" required>
                      </div>
                    </div>
                    <div class="mb-3 row">
                      <label for="tel" class="col-sm-2 col-form-label">전화번호</label>
                      <div class="col-sm-10">
                        <input type="tel" name="tel" class="form-control" id="tel" value="${member.tel }" required>
                      </div>
                    </div>
                    <div class="mb-3 row">
                      <label for="tel" class="col-sm-2 col-form-label">이메일</label>
                      <div class="col-sm-10">
                        <input type="email" name="email" class="form-control" id="email" value="${member.email }" required>
                      </div>
                    </div> 
                    <div class="btn_group">
	                      <input class="btn btn-primary" type="submit" value="수정">
	                      <input class="btn btn-primary" type="reset" value="취소">
	                      <c:if test="${sid != 'admin' }">
	                      	<a href="${path1 }/member/delete.do?userid=${sid }">회원탈퇴</a>
	                      </c:if>
	                      <c:if test="${sid == 'admin' }">
	                      	 <a href="${path1 }/member/list.do">회원목록</a>
	                      </c:if>	                                                   
                    </div> 
                  </form>
            </div>
            
            <script type="text/javascript">
            	function updateCheck(f) {
            		if(f.userpw.value != f.userpw2.value) {
            			alert("비밀번호가 서로 일치 하지 않습니다.");
            			return false;
            		}
            	}
            </script>
    <%@ include file ="../include/footer.jsp" %>   
</body>
</html>