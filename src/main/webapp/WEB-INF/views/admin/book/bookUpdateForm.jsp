<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>도서 정보수정</h2>
						<div class="breadcrumb__option">
							<a href="main.do">Home</a><span>Info</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="product-details spad">
		<div class="container">
			<div class="row">
	
				<div class="col-lg-9 col-md-7">
					<div class="blog__details__author">
						<div class="blog__details__author__pic">
						<c:choose>
							<c:when test="${book.book_picture eq null}">
								<img src="resources/ogani/img/product/details/product-details-1.jpg" alt=""><br><br>
							</c:when>
							<c:otherwise>
								<img alt="" src="resources/ogani/upload/${book.book_picture}"><br><br>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
					<br>
				
					<div class="product__details__text">
						<h3>${book.book_name }</h3>
						<br>
						<hr>
						<br>
					</div>
					<form id="user" action="bookUpdate.do" method="post" enctype="multipart/form-data">
					<input type="hidden" id="book_isbn" name="book_isbn" value="${book.book_isbn }">
						<div class="row">
							<div class="col-lg-9 col-md-7">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												도서명
											</p>
											<input type="text" id="book_name" name="book_name" value='${book.book_name }'>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												도서내용
											</p>
											<input type="text" id="book_content" name="book_content" required="required" value="${book.book_content}">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												저자
											</p>
											<input type="text" id="book_write" name="book_write" required="required" value="${book.book_write}">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>페이지 수</p>
											<input type="text" id="book_page" name="book_page" value="${book.book_page }">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>출판사</p>
											<input type="text" id="book_publis" name="book_publis" value="${book.book_publis }">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												도서 이미지
											</p>
											<input type="file" id="file" name="file">
										</div>
									</div>

									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												선호하는 장르<span>*</span>
											</p>
										</div>
										<div class="checkout__input__checkbox">
											<label for="genre0">총류&emsp; 
												<input type="radio" id="genre0" name="book_cheonggu" value="0">
												<span class="checkmark"></span></label>
											<label for="genre1">철학&emsp;
												<input type="radio" id="genre1" name="book_cheonggu" value="1">
												<span class="checkmark"></span></label>
											<label for="genre2">종교&emsp;
												<input type="radio" id="genre2" name="book_cheonggu" value="2">
												<span class="checkmark"></span></label>
											<label for="genre3">사회과학&emsp;
												<input type="radio" id="genre3" name="book_cheonggu" value="3">
												<span class="checkmark"></span></label>
											<label for="genre4">자연과학&emsp;
												<input type="radio" id="genre4" name="book_cheonggu" value="4">
												<span class="checkmark"></span></label>
											<label for="genre5">기술과학&emsp;
												<input type="radio" id="genre5" name="book_cheonggu" value="5">
												<span class="checkmark"></span></label>
											<label for="genre6">예술&emsp;
												<input type="radio" id="genre6" name="book_cheonggu" value="6">
												<span class="checkmark"></span></label>
											<label for="genre7">언어&emsp;
												<input type="radio" id="genre7" name="book_cheonggu" value="7">
												<span class="checkmark"></span></label>
											<label for="genre8">문학&emsp;
												<input type="radio" id="genre8" name="book_cheonggu" value="8">
												<span class="checkmark"></span></label>
											<label for="genre9">역사&emsp;
												<input type="radio" id="genre9" name="book_cheonggu" value="9">
												<span class="checkmark"></span></label>
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-md-12">
										<input type="submit" class="site-btn" style="float: right;" value="수정하기">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>