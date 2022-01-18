<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
			<div class="container">
				<div class="row">
					<div class="categories__slider owl-carousel">
						<div class="col-lg-12">
							<div class="hero__item set-bg"
								data-setbg="resources/ogani/img/hero/banner.jpg">
								<div class="hero__text"></div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
	<!-- Categories Section Begin -->
	<section class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="resources/ogani/img/categories/cat-1.jpg">
							<h5>
								<a href="#">Fresh Fruit</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="resources/ogani/img/categories/cat-2.jpg">
							<h5>
								<a href="#">Dried Fruit</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="resources/ogani/img/categories/cat-3.jpg">
							<h5>
								<a href="#">Vegetables</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="resources/ogani/img/categories/cat-4.jpg">
							<h5>
								<a href="#">drink fruits</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="resources/ogani/img/categories/cat-5.jpg">
							<h5>
								<a href="#">drink fruits</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Featured Section Begin -->

	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>장르별 추천도서</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner End -->

	<!-- Latest Product Section Begin -->
	<section class="latest-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<c:forEach items="${ searchSelectOne}" var="searchOne">
							<c:forEach items="${ genre}" var="genre">
								<c:if test="${searchOne.book_cheonggu eq genre.genre_id}">
									<h4>${genre.genre_name}</h4>
								</c:if>	
							</c:forEach>
						</c:forEach>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
							
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<c:forEach items="${ searchSelectTwo}" var="searchTwo">
							<c:forEach items="${genre}" var="genre">
								<c:if test="${searchTwo.book_cheonggu eq genre.genre_id}">
									<h4>${genre.genre_name}</h4>
								</c:if>
							</c:forEach>
						</c:forEach>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<c:forEach items="${ searchSelectThree}" var="searchThree">
							<c:forEach items="${genre}" var="genre">
								<c:if test="${searchThree.book_cheonggu eq genre.genre_id}">
									<h4>${genre.genre_name}</h4>
								</c:if>
							</c:forEach>
						</c:forEach>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="resources/ogani/img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Product Section End -->

	<!-- Blog Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>블로그</h2>
					</div>
				</div>
			</div>
			<div class="row">
			<c:forEach items="${searchbook }" var="book">
				<c:forEach items="${searchBlogThree }" var="blogThree">
				<c:if test="${blogThree.book_isbn eq book.book_isbn }">
				<a href="reviewDetailSelect.do?blog_id=${blogThree.blog_id }">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src= "${book.book_picture }" width="359.98" height="491.67" alt="">
						</div>
						<div class="blog__item__text">

							<h5>
								<a href="#">${blogThree.review_title } </a>
							</h5>
						</div>
					</div>
				</div>
				</a>
				</c:if>
				</c:forEach>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>추천 도서</h2>
					</div>
				</div>
			</div>
			<div class="row featured__filter">
				<c:forEach items="${ searchbook}" var="book">
					<c:forEach items="${ searchBlog}" var="blog">
						<c:if test="${blog.book_isbn eq book.book_isbn }">
							<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="${book.book_picture }">
										<ul class="featured__item__pic__hover">
										</ul>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">${book.book_name }</a>
										</h6>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
	</section>


</body>
</html>