<%@page import="co.micol.prj.board.service.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    
<section class="blog spad">
        <div class="container">
            <div class="row">
	<div class="col-lg-8 col-md-7">
                    <div class="row">
                    <c:forEach items="${boards }" var="board">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/ogani/img/board/${board.board_pfile }" width="" height="" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o">${board.board_date }</i></li>
                                        <li><i class="fa fa-comment-o"></i> ${board.board_num }</li>
                                    </ul>
                                    <h5><a href="boardDetailPage.do?board_num=${board.board_num }">${board.board_title }</a></h5>
                                    <p>${board.board_id }</p>
                                    <a href="#" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                        
                        <div class="col-lg-12">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <button type="button" onclick="location.href='boardInsertPage.do'">글쓰기</button>
        </div>
        </section>
</body>
</html>