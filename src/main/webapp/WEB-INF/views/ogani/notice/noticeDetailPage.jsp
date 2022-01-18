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

.button {
	margin-top: 20px;
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
						<h2>공지사항</h2>
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
										<div>
											제목: <input type="text" id="notice_title" name="notice_title"
												value="${noticeDetail.notice_title }" readonly="readonly"><br>
											내용<br>
											<textarea name="notice_content" id="notice_content" rows="10"
												cols="130" readonly="readonly">${noticeDetail.notice_content }</textarea>
											<br>
											<c:if test="${sessionScope.member_author eq 'admin' }">
												<div class="button"
													style="display: flex; justify-content: flex-end;">
													<button type="submit" class="btn" style="margin-right: 7px"
														onclick="location.href='noticeUpdatePage.do?notice_num=${noticeDetail.notice_num}'">수정하기</button>
													<button type="submit" class="btn"
														onclick="location.href='noticeDelete.do?notice_num=${noticeDetail.notice_num}'">삭제하기</button>
												</div>
											</c:if>
										</div>

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