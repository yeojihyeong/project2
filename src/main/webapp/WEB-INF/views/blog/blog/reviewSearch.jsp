<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/bookmen.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Blog</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Blog</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<section class="blog spad">
		<div class="container"></div>
		<div class="col-lg-8 col-md-7">
			<h2> 검색 결과	</h2>

			<div class="row" style="margin-top: 40px;">
				<c:forEach items="${search }" var="search">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="resources/ogani/img/blog/1.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> <c:out
											value="${search.review_date}" /></li>
								</ul>
								<h5>
									<c:out value="${search.review_title}" />
								</h5>

								<form action="reviewDetailSelect.do" method="get">
									<input type="hidden" name="blog_id" id="blog_id" value="${search.blog_id }">
										<input class="blog__btn" type="submit" value="READ MORE">
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="aside_home" class="col-lg-3"
			style="float: right; top: -1700px; margin-right: 10px">
			<a href="blog_home.do" class="blog__btn">Go to my booklog </a> <input
				class="form-control" type="text" placeholder="Enter search term..."
				aria-label="Enter search term..." aria-describedby="button-search" />
			<button class="btn btn-primary" id="button-search" type="button">Go!</button>
			<img src="resources/ogani/img/blog/3.jpg" alt="">


		</div>

	</section>



	<!-- Blog Section End -->

</body>

</html>