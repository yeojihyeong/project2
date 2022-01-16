<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/blog/css/fontawesome-stars.css">
<script type="text/javascript" src="resources/blog/js/jquery.barrating.min.js"></script>

</head>

<script type="text/javascript">

$(document).ready(function(){
	
	$('#star_rating').barrating({
		theme:'fontawesome-stars'
		, readonly: true
	});
	
	$('#example').barrating('set', ${review.review_rating })
	
});
</script>

<body>

<section class="breadcrumb-section set-bg" data-setbg="resources/ogani/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>검색결과</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">검색결과</a>
                            <span>검색결과</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<section class="product-details spad">
	<div class="container">
		<div class="row">
		<div class="col-lg-9" style="float: none; margin: 0 auto;">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<!-- 큰 이미지 -->
						<img class="product__details__pic__item--large"
							src="${book.book_picture }"
							alt="">
					</div>
					<div class="product__details__pic__slider owl-carousel">
						<!-- 작은 이미지 -->
						<!-- 	<img data-imgbigurl="resources/admin/ogani/img/product/details/product-details-2.jpg" src="resources/admin/ogani/img/product/details/thumb-1.jpg" alt="">
						<img data-imgbigurl="resources/admin/ogani/img/product/details/product-details-3.jpg" src="resources/admin/ogani/img/product/details/thumb-2.jpg" alt="">
						<img data-imgbigurl="resources/admin/ogani/img/product/details/product-details-5.jpg" src="resources/admin/ogani/img/product/details/thumb-3.jpg" alt="">
						<img data-imgbigurl="resources/admin/ogani/img/product/details/product-details-4.jpg" src="resources/admin/ogani/img/product/details/thumb-4.jpg" alt=""> -->
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<h3>${book.book_name }</h3>
					<div class="product__details__rating">
					<select id="star_rating">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
						 <span>(18 reviews)</span>
					</div>
					<!-- <div class="product__details__price">$50.00</div> -->
					<p>${book.book_content }</p>
					<!-- <div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty">
								<input type="text" value="1">
							</div>
						</div>
					</div>
					<a href="#" class="primary-btn">ADD TO CARD</a> <a href="#"
						class="heart-icon"><span class="icon_heart_alt"></span></a> -->
					<ul>
						<%-- <li><b>총 페이지 수</b> <span>${book.book_page } </span></li> --%>
						<li><b>저자</b> <span>${book.book_write }</span></li>
						<li><b>출판사</b> <span>${book.book_publis }</span></li>

					</ul>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Reviews</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
								<p>Vestibulum ac diam sit amet quam vehicula elementum sed
									sit amet dui. Pellentesque in ipsum id orci porta dapibus.
									Proin eget tortor risus. Vivamus suscipit tortor eget felis
									porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
									elementum sed sit amet dui. Donec rutrum congue leo eget
									malesuada. Vivamus suscipit tortor eget felis porttitor
									volutpat. Curabitur arcu erat, accumsan id imperdiet et,
									porttitor at sem. Praesent sapien massa, convallis a
									pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet
									quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum
									primis in faucibus orci luctus et ultrices posuere cubilia
									Curae; Donec velit neque, auctor sit amet aliquam vel,
									ullamcorper sit amet ligula. Proin eget tortor risus.</p>
								<p>Praesent sapien massa, convallis a pellentesque nec,
									egestas non nisi. Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
									nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
									Cras ultricies ligula sed magna dictum porta. Sed porttitor
									lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
									pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum
									sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam
									sit amet quam vehicula elementum sed sit amet dui. Proin eget
									tortor risus.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</section>


</body>
</html>