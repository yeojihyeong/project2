<%@page import="co.micol.prj.board.service.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.row>div:nth-child(1) {
		margin-left: auto;
		margin-right: auto;
	}
	
	#board {
		margin 0;
	}
	
	.btn {
    font-size: 14px;
    color: #ffffff;
    font-weight: 800;
    text-transform: uppercase;
    display: inline-block;
    padding: 13px 30px 12px;
    background: #7fad39;
    border: none;
	}
	
</style>
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
            <div class="container-fluid px-4" style="display: flex; justify-content: space-between;">
				<h3 style="margin-bottom: 30px">자유게시판</h3>
				<button type="button" class="btn" onclick="location.href='boardInsertPage.do'">글쓰기</button>
				</div>
	<div class="col-lg-12 col-md-12" id="board" style="margin:0;">
                    <div class="row" style="width:100%;">
                    <c:forEach items="${boards }" var="board">
                        <div class="col-lg-3 col-md-3 col-sm-3">
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
                    
                    
                        
                            </div>
						        
						    </div>
						    
							<div>
	                            <div class="product__pagination blog__pagination">
	                                <a href="#">1</a>
	                                <a href="#">2</a>
	                                <a href="#">3</a>
	                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
	                            </div>
	                        </div>
						
                    </div>
                </div>
        
        </section>
</body>
</html>