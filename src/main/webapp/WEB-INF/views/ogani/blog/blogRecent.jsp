<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/ogani/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/ogani/css/style.css"
	type="text/css">
<style type="text/css">
.blog__btn {
	width: 350px;
	height: 60px;
	border: 5px solid rgb(127, 173, 57);
	background-color: white;
	font-size: 20px;
	text-align: center;
	color: black;
	display: inline-block;
	border-radius: 30px;
	margin-bottom: 20px;
	padding-top: 5px;
}

.cover {
	width: 110px;
	height: 500px;
	margin-right: 40px;
	margin-bottom: 50px;
}

.read {
	margin-top: 10px;
	background-color: lightgray;
	color: black;
	width: 200px;
	height: 40px;
	border-radius: 30px;
	border: 1px solid gray;
}

.form-control {
	width: 350px;
	height: 40px;
}

#bookimagesize{
	width: 200px;
	height:350px;
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
						<h2 style="color: black;">Blog</h2>
						<div class="breadcrumb__option">
							<a href="./index.html" style="color: black;">Home</a> <span
								style="color: black;">Blog</span>
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
				<a href="blog_list.do" style="color: gray;">????????? ?????????</a>
				&nbsp;&nbsp;&nbsp; <a href="blog_recent.do"
					style="color: rgb(127, 173, 57); font-weight: bold;">?????? ?????????</a>
			</h2>

			<div class="row" style="margin-top: 40px;">
				<c:forEach items="${ recent}" var="list">
					<c:forEach items="${book }" var="book">
						<c:if test="${list.book_isbn eq book.book_isbn  }">
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="blog__item">
									<div class="blog__item__pic">
									
										<img id="bookimagesize" class="" src="${book.book_picture}" alt="">
										
									</div>
									<div class="blog__item__text">
										<ul>
											<li><i class="fa fa-calendar-o"></i> <c:out
													value="${list.review_date}" /></li>
										</ul>
										<h4>
											<c:out value="${list.review_title}" />
										</h4>

										<form action="reviewDetailSelect.do" method="get">
											<input type="hidden" name="blog_id" id="blog_id"
												value="${list.blog_id }"> <input class="read"
												type="submit" value="READ MORE ???">
										</form>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>			</div>
		</div>
		<div id="aside_home" class="col-lg-3"
			style="float: right; top: -1200px; margin-right: 10px">
			<c:if test="${member_id  ne null}">
				<a href="blog_home.do" class="blog__btn">?????? ???????????? ?????? </a>
			</c:if>
			<form name="blogForm" action="reviewSearch.do" method="get">
				<input class="form-control" type="text" value="${searchValue }"
					placeholder="Enter search term..."
					aria-label="Enter search term..." aria-describedby="button-search" />
				<input type="submit" value="??????"
					style="background-color: rgb(127, 173, 57); border: 0; float: right;"
					class="btn btn-primary" id="button-search" type="button">
			</form>
			<img src="resources/ogani/img/blog/3.jpg" alt=""
				style="margin-top: 70px;">


		</div>

	</section>



	<!-- Blog Section End -->

</body>
<script>
	
</script>

</html>