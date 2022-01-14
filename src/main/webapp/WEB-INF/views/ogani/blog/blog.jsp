<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		data-setbg="resources/ogani/img/breadcrumb.jpg">
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
			<a href="#">인기 포스팅</a>
			<div class="row">


				<c:forEach items="${list }" var="list">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="resources/ogani/img/blog/blog-2.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> <c:out
											value="${list.review_date}" /></li>
								</ul>
								<h5>
									<a href="#"><c:out value="${list.review_title}" /></a>
								</h5>

								<form action="reviewDetailSelect.do" method="get">
									<input type="hidden" name="blog_id" id="blog_id"
										value="${list.blog_id }"> 
										<input type="submit"
										value="READ MORE"> <span class="arrow_right"></span>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>



				<c:if test="${member_id ne null }">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<a href="blog_home.do" class="blog__btn">Go to my booklog </a>
						</div>
					</div>
				</c:if>
			</div>
		</div>

	</section>
	<!-- Blog Section End -->

</body>

</html>