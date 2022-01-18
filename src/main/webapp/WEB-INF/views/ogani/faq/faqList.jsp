<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link ref="stylesheet" href="resources/ogani/css/faq/faq-main.css"
	type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<!-- <link href="resources/admin/css/styles.css" rel="stylesheet" /> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
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

label.menu {
	border: 2px solid #7fad39;
	width: 80%;
	height: 50px;
	font-size: 20px;
}

input#menu {
	display: none;
}

nav#main_nav {
	display: none;
	width: 80%;
}

input#menu:checked+nav#main_nav {
	display: block;
}

ul {
	list-style: none;
}

#main_nav>ul>li:nth-child(1) {
	border: 1px solid grey;
}
</style>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/breadcrumb.jpg" style="margin-bottom: 50px">
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

	<section class="featured spad" style="padding-top:0; padding-bottom:0;">
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

	<section class="blog spad" style="padding-top:0;">
		<div class="container">
			<div class="row">
				<div id="layoutSidenav" class="col-lg-12 col-md-12 col-sm-12">
					<div id="layoutSidenav_content">
						<main>
							<div class="container-fluid px-4">
								<div class="card mb-4">
									<div class="card-body">
										<table id="datatablesSimple">
											<colgroup>
												<col style="width: 20%">
												<col style="width: 60%">
												<col style="width: 20%">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${faqs }" var="faq">

													<tr>
														<td>${faq.faq_id }</td>
														<td
															onclick="location.href='faqDetailPage.do?faq_id=${faq.faq_id}'">${faq.faq_question }</td>
														<td>${faq.faq_date }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<c:if test="${sessionScope.member_author eq 'admin' }">
											<div class="button"
												style="display: flex; justify-content: flex-end;">
												<button type="button" class="btn"
													style="margin-bottom: 50px;"
													onclick="location.href='faqInsertPage.do'">글쓰기</button>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</main>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		function notice() {
			location.href = "noticeInsertPage.do";
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/datatables-simple-demo.js"></script>
</body>
</html>