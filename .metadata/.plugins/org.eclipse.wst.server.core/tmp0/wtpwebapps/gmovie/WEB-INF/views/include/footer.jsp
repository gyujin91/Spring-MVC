<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<footer id="footer">
<div class="footer_wrap">
    <div class="footer_top">
        <ul class="fnb">
            <li><a href="${path1 }/include/gmovieInfo.do">회사소개</a></li>
            <li><a href="${path1 }/include/recruit.do">인재채용</a></li>
            <li><a href="${path1 }/include/social.do">사회공헌</a></li>
            <li><a href="${path1 }/include/partner.do">제휴/광고/부대사업문의</a></li>
            <li><a href="${path1 }/include/rules.do">법적고지</a></li>
            <li><a href="${path1 }/include/emreject.do">이메일주소무단수집거부</a></li>
            <li><a href="${path1 }/include/management.do">윤리경영</a></li>
        </ul>
    </div>
    <div class="footer_bottom">
        <img src="${path1 }/resources/imgs/footer_logo.png" alt="푸터로고" class="footerLogo">
        <span>
            <strong>주소 : 경기도 시흥시 은계번영길 9, 4F 409~411(은행동 골드웨이)</strong>                   
        </span>
        <span>
            <strong>E-mail : </strong>
                gmovie@naver.com
        </span>
        <br>
        <span>
            <strong>상호명 : </strong>
                GMOVIE
        </span>
        <span>
            <strong>대표이사 : </strong>
                이규진
        </span>
        <span>
            <strong>사업자등록번호 : </strong>
            647-16-02021
        </span>
        <span>
            <strong>통신판매업신고번호 : </strong>
                2022-경기시흥-1113
        </span>
        <p>COPYRIGHT ⓒ2022 GMOVIE All right Reserved</p>
    </div>
</div>
</footer>