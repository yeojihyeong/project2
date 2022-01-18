<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing:border-box;
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  max-height: 450px;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  height: 450px;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
 /*  background-color: #717171; */
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

#home_blog_image{
	width: 200px;
	height: 430px;
}

</style>
</head>

<script type="text/javascript">

var slideIndex = 0; //slide index

//HTML 로드가 끝난 후 동작
window.onload=function(){
showSlides(slideIndex);

// Auto Move Slide
var sec = 3000;
setInterval(function(){
 slideIndex++;
 showSlides(slideIndex);

}, sec);
}


//Next/previous controls
function moveSlides(n) {
slideIndex = slideIndex + n
showSlides(slideIndex);
}

//Thumbnail image controls
function currentSlide(n) {
slideIndex = n;
showSlides(slideIndex);
}

function showSlides(n) {

var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
var size = slides.length;

if ((n+1) > size) {
 slideIndex = 0; n = 0;
}else if (n < 0) {
 slideIndex = (size-1);
 n = (size-1);
}

for (i = 0; i < slides.length; i++) {
   slides[i].style.display = "none";
}
for (i = 0; i < dots.length; i++) {
   dots[i].className = dots[i].className.replace(" active", "");
}

slides[n].style.display = "block";
dots[n].className += " active";
}

</script>
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
			<br>
			<div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="resources/ogani/upload/image1.PNG" style="width:100%">
       <!--  <div class="text">ACNE STUDIO</div> -->
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="https://divisare-res.cloudinary.com/images/f_auto,q_auto,w_800/v1491425435/hwxwxqxfwo4htfgqksbu/acne-studios-acne-studio-potsdamer-strasse.jpg" style="width:100%">
    
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="https://divisare-res.cloudinary.com/images/f_auto,q_auto,w_800/v1491425448/rnelglmoujifzlbzykxw/acne-studios-acne-studio-potsdamer-strasse.jpg" style="width:100%">
       
      </div>


      <!-- Next and previous buttons -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
    </div>
			<br>
			<br>
			
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
								<c:forEach items="${ bookOne}" var="book">
								<a href="${book.book_picture }" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="#" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>${book.book_name }</h6>
									</div>
								</a>
								</c:forEach>
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
								<c:forEach items="${ bookTwo}" var="book">
								<a href="${book.book_picture }" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="#" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>${book.book_name }</h6>
									</div>
								</a>
								</c:forEach>
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
								<c:forEach items="${ bookThree}" var="book">
								<a href="${book.book_picture }" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="#" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>${book.book_name }</h6>
									</div>
								</a>
								</c:forEach>
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