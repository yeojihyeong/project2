<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="blog-details-hero set-bg"
		data-setbg="resources/ogani/img/book.jpg">
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
				<h3>자유게시판_수정하기</h3>
			</div>
			<form action="boardUpdate.do?board_num=${board.board_num }"	id="boardUpdate" name="boardUpdate" method="post"	enctype="multipart/form-data">
				<div>
					제목: <input type="text" name="board_title" id="board_title"><br>
					내용:<br>
					<textarea name="board_content" id="board_content" rows="10"
						cols="130"></textarea>
					사진: <input type="file" name="file" id="file">
				</div>
				<div>
					<input type="submit" value="수정하기">
				</div>
			</form>
</body>
</html>