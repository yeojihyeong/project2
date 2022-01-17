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
				<h3>자주하는 질문</h3>
			</div>

			<div>
				<div>
					Question: <input type="text" id="faq_question" name="faq_question"
						value="${faqDetail.faq_question }" readonly="readonly"><br>
					Answer<br>
					<textarea name="faq_answer" id="faq_answer" rows="10"
						cols="130" readonly="readonly">${faqDetail.faq_answer }</textarea>
					<br>

					<div class="button"
						style="display: flex; justify-content: flex-end;">
						<button type="submit" class="btn" style="margin-right: 7px"
							onclick="location.href='faqUpdatePage.do?faq_id=${faqDetail.faq_id}'">수정하기</button>
						<button type="submit" class="btn"
							onclick="location.href='faqDelete.do?faq_id=${faqDetail.faq_id}'">삭제하기</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>