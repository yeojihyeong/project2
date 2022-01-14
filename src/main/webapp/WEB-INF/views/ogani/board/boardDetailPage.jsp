<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<style>
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
.button {
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<section class="blog-details-hero set-bg"
		data-setbg="resources/ogani/img/book.jpg" style="margin-bottom: 50px">
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
	
	<img src="resources/ogani/img/board/${boardDetail.board_picture }" width="" height="" alt="">
	<h2>${boardDetail.board_title }</h2>
	<h5>${boardDetail.board_content }</h5>
	<div class="button">
	<button type="submit" class="btn"
		onclick="location.href='boardUpdatePage.do?board_num=${boardDetail.board_num }'">수정하기</button>
	<button type="submit" class="btn"
		onclick="location.href='boardDelete.do?board_num=${boardDetail.board_num }'">삭제하기</button>
	</div>
	<div class="comment-section">
		<div class="grids_of_2">
			<h2>Comments</h2>
			<c:forEach items="${bcommDetail }" var="detail">
				<div class="comm">
					<!-- <div class="grid1_of_2"> -->
					<div class="grid_img">
						<a href=""><img src="images/pic10.jpg" alt=""></a>
					</div>
					<div class="grid_text">
						<h6 class="style1 list">
							<a href="#">${detail.writer }</a>
						</h6>
						<h6 class="style">${detail.content }</h6>
						<p class="para top">${detail.wdate }</p>
						<a href="" class="btn1">Click to Reply</a>
					</div>
					<div class="clear"></div>

				</div>
			</c:forEach>


			<div class="comm-comm">
				<!-- 	<div class="grid1_of_2 left"> -->
				<div class="grid_img">
					<a href=""><img src="images/pic10.jpg" alt=""></a>
				</div>
				<div class="grid_text">
					<h4 class="style1 list">
						<a href="#">Designer First</a>
					</h4>
					<h3 class="style">march 3, 2013 - 4.00 PM</h3>
					<p class="para top">All the Lorem Ipsum generators on the
						Internet tend to repeat predefined chunks as necessary, making
						this the first true generator on the Internet. It uses a
						dictionary of over 200 Latin words, combined with a handful of
						model sentence structures, to generate Lorem Ipsum which looks
						reasonable.</p>
					<a href="" class="btn1">Click to Reply</a>
				</div>
				<div class="clear"></div>
			</div>

			<div class="artical-commentbox">
				<h4>댓글입력</h4>
				<div class="table-form">
					<form action="grpInsert.do" method="post" id="comm-comm"
						name="comm-comm">
						<div>
							Comment <input type="text" id="content" name="content"> <input
								type="hidden" value="${boardDetail.board_num }"> <input
								type="hidden" value="${boardDetail.board_id }">

						</div>
						<input type="submit" class="btn" value="댓글등록">
					</form>

				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>