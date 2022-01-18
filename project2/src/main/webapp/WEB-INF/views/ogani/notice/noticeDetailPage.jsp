<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="resources/admin/css/styles.css" rel="stylesheet" /> -->
<style type="text/css">
.spad {
	padding-top: 0;
	padding-bottom: 0;
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
				<h3>공지사항</h3>
			</div>

			<div>
				<div>
					제목: <input type="text" id="notice_title" name="notice_title"
						value="${noticeDetail.notice_title }" readonly="readonly"><br>
					내용<br>
					<textarea name="notice_content" id="notice_content" rows="10"
						cols="130" readonly="readonly">${noticeDetail.notice_content }</textarea>
					<br>

					<div class="button"
						style="display: flex; justify-content: flex-end;">
						<button type="submit" class="btn" style="margin-right: 7px"
							onclick="location.href='noticeUpdatePage.do?notice_num=${noticeDetail.notice_num}'">수정하기</button>
						<button type="submit" class="btn"
							onclick="location.href='noticeDelete.do?notice_num=${noticeDetail.notice_num}'">삭제하기</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>