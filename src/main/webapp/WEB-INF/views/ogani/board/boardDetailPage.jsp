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

	<div class="container">
		<div class="col-lg-12">
			<div style="margin-top: 50px; margin-bottom: 30px;">
				<h3>게시판</h3>
			</div>
			<div>
				<div>
					<img src="resources/ogani/img/board/${boardDetail.board_picture }"
						width="" height="" alt=""> 제목: <input type="text"
						id="board_title" name="board_title"
						value="${boardDetail.board_title }" readonly="readonly"><br>
					내용<br>
					<textarea name="board_content" id="board_content" rows="10"
						cols="130" readonly="readonly">${boardDetail.board_content }</textarea>
					<br>
					<div class="button"
						style="display: flex; justify-content: flex-end;">
						<button type="submit" class="btn"
							onclick="location.href='boardUpdatePage.do?board_num=${boardDetail.board_num }'">수정하기</button>
						<button type="submit" class="btn"
							onclick="location.href='boardDelete.do?board_num=${boardDetail.board_num }'">삭제하기</button>
					</div>
				</div>
			</div>
		</div>


		<!-- 댓글 -->


		<div class="container">
			<div class="col-lg-12">
				<div style="margin-top: 50px; margin-bottom: 30px;">
					<h3>댓글</h3>
				</div>
			</div>
		</div>
		<section class="mb-5">
			<div class="card bg-light">
				<div class="card-body">
					<!-- Comment form-->
				
					<!-- Comment with nested comments-->
					<c:forEach items="${bcommDetail }" var="detail">
						<div class="d-flex mb-4">
							<!-- Parent comment-->
							<div class="ms-3">
								<div class="fw-bold">${detail.writer }</div>
								${detail.content }
							</div>
						</div>
					</c:forEach>
				</div>

			</div>
		</section> 
		
		
		<div class="artical-commentbox">
					<h4>댓글등록</h4>
					<div class="table-form">
						<form action="grpInsert.do" method="post" id="comm-comm"
							name="comm-comm">
							<div>
								내용: <input type="text" id="content" name="content">
								<input type="hidden" value="${boardDetail.board_num }">
								<input type="hidden" value="${boardDetail.board_id }">

							<div class="button"
						style="display: flex; justify-content: flex-end;">
							<input type="submit" class="btn" value="댓글등록">
						</form>

					</div>
					<div class="clear"></div>
				</div>
			</div>
	</div>
</body>
</html>