<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#book_image{
	width: 100px;
	height: 400px;
}
</style>
</head>
<body>
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
			<div class="row">
			<div class="col-lg-1 col-md-1"></div>
			<div class="col-lg-7 col-md-7">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<!-- 큰 이미지 -->
						<img id="book_image"
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
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<h3>${book.book_name }</h3>
					
					<!-- <div class="product__details__price">$50.00</div> -->
					<p></p>
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
						<li><b>총 페이지 수</b> <span>${book.book_page } </span></li>
						<li><b>저자</b> <span>${book.book_write }</span></li>
						<li><b>출판사</b> <span>${book.book_publis }</span></li>
						<li><a href="#" onclick="addWishBook()">읽고싶은책</a></li>
						<li><a href="">읽고있는책</a></li>
						<li><a href="">읽은책</a></li>

					

						<!-- <li>
							<b>Share on</b>
							<div class="share">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-pinterest"></i></a>
							</div>
							</li> -->
					</ul>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Infomation</a>
						</li>
						<!-- <li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab" aria-selected="false">Information</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
						</li> -->
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<h6>Products Infomation</h6>
								<p>${book.book_content }</p>
								<p></p>
							</div>
						</div>
						<!-- <div class="tab-pane" id="tabs-2" role="tabpanel">
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
									pulvinar a.</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
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
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	
	function addWishBook(){
		
		$.ajax({
			url: "ajaxaddWishBook.do",
			type: "POST",
			data: {book_isbn : ${book.book_isbn }},
			success: function(result){
				alert("추가되었습니다.")
				
			},error: function(error){
				console.log(error);
				alert("오류가 발생했습니다.");
			}
		})
		
	}
	
</script>
</body>
</html>