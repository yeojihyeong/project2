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
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/bookmen.jpg" style="margin-bottom: 50px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>FAQ</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>FAQ</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>자주하는 질문</h2>
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
											Question: <input type="text" id="faq_question"
												name="faq_question" value="${faqDetail.faq_question }"
												readonly="readonly"><br> Answer<br>
											<textarea name="faq_answer" id="faq_answer" rows="10"
												cols="130" readonly="readonly">${faqDetail.faq_answer }</textarea>
											<br>
											<c:if test="${sessionScope.member_author eq 'admin'}">
												<div class="button"
													style="display: flex; justify-content: flex-end;">
													<button type="submit" class="btn" style="margin-right: 7px"
														onclick="location.href='faqUpdatePage.do?faq_id=${faqDetail.faq_id}'">수정하기</button>
													<button type="submit" class="btn"
														onclick="location.href='faqDelete.do?faq_id=${faqDetail.faq_id}'">삭제하기</button>
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