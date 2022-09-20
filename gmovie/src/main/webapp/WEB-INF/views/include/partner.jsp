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
        ), url(${path1}/resources/imgs/north-gd8c822961_1920.jpg);
        background-attachment: fixed;
        z-index: 0;
      }
      .partner {
        position: absolute;
        top: 15%;
        left: 35%;
        transform: (-50%, -50%);
        z-index: 999;
        color: #ffffff;
        text-align: center;
      }
      .partner h2 {
        font-weight: bold;
        font-size: 35px;
      }
      .partner p {
        font-weight: bold;
        font-size: 20px;
        margin-top: 20px;
      }
      .content {
        width: 1200px;
        margin: auto;
        padding-top: 100px;
      }
      .agreeBox {
        border: 1px solid #d8d9db;
        border-radius: 15px;
      }
      .agree {
        border-bottom: 1px solid #d8d9db;
        font-weight: bold;
        padding: 15px 30px 15px 30px;
      }
      .agree .bg-chk {
        padding-right: 5px;
      }
      .agree strong {
        font-weight: bold;
      }
      .agree span {
        color: #E63E30;
      }
      .box {
        padding: 15px 30px 15px 30px;
        font-size: 15px;
        font-weight: 500;
      }
      .box span p {
        color: #000000;
        font-weight: bold;
        font-size: 17px;
      }
      .tit1 {
        float: left;
        margin: 20px 0;
        font-weight: bold;
        font-size: 18px;
      }
      .tit2 {
        margin: 20px 0;
        font-weight: bold;
        font-size: 18px;
      }
      .tit2 .font-red {
        color: #E63E30;
        
      }
      .company-table {
        border-top: 1px solid #555;
        width: 1200px;
        margin-top: 30px;
        border-collapse: collapse;
      }
      .table-wrap {
        position: relative;
      }
      .company-table .board-form th,td {
        border-bottom: 1px solid #d1d5dd;
        border-collapse: collapse;
        padding: 20px;
      }
      .company-table .board-form th {
        background-color: beige;
        text-align: center;
        width: 100px;
      }
      .company-table .board-form th label{
        display: inline-block;
        cursor: pointer;
      }
      .company-table .board-form th em {
        color: #E63E30;
      }
      .company-table .board-form td .radio {
        margin-right: 10px;
      }
      .company-table .board-form td .label {
        margin-right: 10px;
      }
      .company-table .board-form textarea {
        width: 100%;
        height: 300px;
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
        <div class="partner">
            <h2>제휴ㆍ광고ㆍ부대사업 문의</h2>
            <p>서비스 제휴 및 광고, 부대사업에 대한 문의를 할 수 있는 공간입니다.</p>
        </div>
     </section>
     <div class="content">
        <div class="agreeBox">
            <div class="agree">
                <span class="bg-chk">
                    <input type="checkbox" name="chk" id="chk">
                </span>
                <strong>개인정보 수집에 대한 동의</strong>
                <span class="font-red">[필수]</span>
            </div>
            <div class="box">
                귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집.이용에 대한 본인 동의가 필요한 항목입니다.<br><br>
                [개인정보의 수집 및 이용목적] <br>
                회사는 제휴/광고/부대사업 문의내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.
                <br><br>
                [필수 수집하는 개인정보의 항목]<br>이름, 회사명, 휴대폰, 이메일, 내용<br><br>
                [개인정보의 보유기간 및 이용기간]
                <span>
                    <p>
                        문의 접수 ~ 처리 완료 후 6개월<br>
                        (단,관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
                        자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.
                    </p>
                </span>
            </div>
        </div>
        <p class="tit1">※ 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실 수 없습니다&nbsp;&nbsp;</p>
        <p class="tit2"><span class="font-red">＊</span>표시 항목은 필수 입력 항목입니다.</p>
        <form action="#" method="post">
            <div class="company-table">
                <div class="table-wrap">
                    <table class="board-form">
                        <tr>
                            <th>
                                <label>구분</label>
                                <em>*</em>
                            </th>
                            <td>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">프로모션제휴</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">신규극장 개발</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">기타제휴</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">부대사업 입점문의</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">스크린광고</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">온라인광고(홈페이지/APP)</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">오프라인광고(극장로비 광고)</label>
                                <input type="radio" name="radioChk" class="radio"><label for="" class="label">기타광고</label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>영화관</label>
                                <em>*</em>
                            </th>
                            <td>
                                <select name="select1" id="select1" title="지역선택">
                                    <option value>지역선택</option>
                                    <option value="10">서울</option>
                                    <option value="30">경기</option>
                                    <option value="35">인천</option>
                                    <option value="45">대전/충청/세종</option>
                                    <option value="55">부산/대구/경상</option>
                                    <option value="65">광주/전라</option>
                                    <option value="70">강원</option>
                                    <option value="80">제주</option>
                                </select>
                                <select name="select2" id="select2" title="영화관선택" disabled="disabled">
                                    <option value>영화관선택</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>이름</label>
                                <em>*</em>
                            </th>
                            <td><input type="text" name="name" id="name"></td>
                        </tr>
                        <tr>
                            <th>
                                <label>회사명</label>
                                <em>*</em>
                            </th>
                            <td><input type="text" name="company" id="company"></td>
                        </tr>
                        <tr>
                            <th>
                                <label>휴대폰</label>
                                <em>*</em>
                            </th>
                            <td><input type="tel" name="tel" id="tel"></td>
                        </tr>
                        <tr>
                            <th>
                                <label>이메일</label>
                                <em>*</em>
                            </th>
                            <td><input type="email" name="email" id="email"></td>
                        </tr>
                        <tr>
                            <th>
                                <label>제목</label>
                                <em>*</em>
                            </th>
                            <td><input type="text" name="title" id="title"></td>
                        </tr>
                        <tr>
                                <th>
                                    <label>내용</label>
                                    <em>*</em>
                                </th>
                            <td>
                                <textarea name="textarea" id="textarea" placeholder="※제휴를 희망하시는 분야에 대한 내용을 기술해 주세요." rows="5" cols="100">
                                </textarea>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="btn_group">
                <button type="button" class="btn btn-primary">지원하기</button>
            </div>
        </form>
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