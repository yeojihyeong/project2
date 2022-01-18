<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="resources/ogani/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/style.css" type="text/css">

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
			<h2>
				<a href="blog_list.do">화제의 포스팅</a> &nbsp;&nbsp;&nbsp; <a
					href="blog_recent.do">최신 포스팅</a>
			</h2>

			<div class="row" style="margin-top: 40px;">
				<c:forEach items="${list }" var="list">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="resources/ogani/img/blog/1.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> <c:out
											value="${list.review_date}" /></li>
								</ul>
								<h5>
									<c:out value="${list.review_title}" />
								</h5>

								<form action="reviewDetailSelect.do" method="get">
									<input type="hidden" name="blog_id" id="blog_id"
										value="${list.blog_id }"> <input type="submit" class="btn"
										value="READ MORE">
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="aside_home" class="col-lg-3"
			style="float: right; top: -1700px; margin-right: 10px">
			<c:if test="${member_id  ne null}">
			<a href="blog_home.do" class="blog__btn">Go to my booklog </a>
			</c:if>
			<form name="blogForm" action="reviewSearch.do" method="get">
				<input class="form-control" type="text" value="${searchValue }"
					placeholder="Enter search term..."
					aria-label="Enter search term..." aria-describedby="button-search" />
				<input type="submit" class="btn btn-primary" id="button-search" type="button">Go!
			</form>
			<img src="resources/ogani/img/blog/3.jpg" alt="">


		</div>

	</section>



	<!-- Blog Section End -->

</body>
<script>

	

</script>

</html>