<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="blog-details-hero set-bg" data-setbg="resources/ogani/img/book.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>The Moment You Need To Remove Garlic From The Menu</h2>
                        <ul>
                            <li>By Michael Scofield</li>
                            <li>January 14, 2019</li>
                            <li>8 Comments</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <h2>${noticeDetail.notice_title }</h2>
    <h5>${noticeDetail.notice_content }</h5>
    
    <button type="submit" onclick="location.href='noticeUpdatePage.do?notice_num=${noticeDetail.notice_num}'">수정하기</button>
    <button type="submit" onclick="location.href='noticeDelete.do?notice_num=${noticeDetail.notice_num}'">삭제하기</button>
</body>
</html>