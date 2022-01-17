<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>게시글 수정하기</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div id="layoutSidenav" class="col-lg-12 col-md-12 col-sm-12">
					<div id="layoutSidenav_content">
						<main>
							<div class="container-fluid px-4">
								<div class="card mb-4">
									<div class="card-body">
										<form action="boardUpdate.do?board_num=${board.board_num }"
											id="boardUpdate" name="boardUpdate" method="post"
											enctype="multipart/form-data">
											<div>
												제목: <input type="text" name="board_title" id="board_title"><br>
												내용:<br>
												<textarea name="board_content" id="board_content" rows="10"
													cols="130"></textarea>
												사진: <input type="file" name="file" id="file">
											</div>
											<div class="button" style="display: flex; justify-content: flex-end;">
												<input type="submit" class="btn" value="수정하기">
											</div>
										</form>
									</div>
								</div>
							</div>
						</main>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>