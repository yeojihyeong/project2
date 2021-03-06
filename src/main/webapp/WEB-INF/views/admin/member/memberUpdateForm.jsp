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

	<script>
		$(document)
				.ready(
						function() {
							$('input[type="checkbox"][name="member_gender"]')
									.click(
											function() {
												if ($(this).prop('checked')) {
													$(
															'input[type="checkbox"][name="member_gender"]')
															.prop('checked',
																	false);
													$(this).prop('checked',
															true);
												}
											});

							$('input[type="checkbox"][name="genre_id"]')
									.click(
											function() {
												if ($(this).prop('checked')) {
													$(
															'input[type="checkbox"][name="genre_id"]')
															.prop('checked',
																	false);
													$(this).prop('checked',
															true);
												}
											});
						});
	</script>
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/bookmen.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>MyInfo</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a><span>Info</span>
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
								<c:when test="${member.member_picture eq null}">
									<img
										src="resources/ogani/img/product/details/product-details-1.jpg"
										alt="">
									<br>
									<br>
								</c:when>
								<c:otherwise>
									<img alt=""
										src="resources/ogani/upload/${member.member_picture}">
									<br>
									<br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<br>
					<form id="user" action="adminMemberUpdate1.do" method="post" enctype="multipart/form-data">
						<div class="product__details__text">
							<h3>${member.member_name }????????????</h3>
							<br>
							<hr>
							<br>
						</div>

						<div class="row">
							<div class="col-lg-9 col-md-7">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>Email</p>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												Name<span>*</span>
											</p>
											<input type="text" id="member_name" name="member_name"
												required="required" value="${member.member_name}">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												????????? ??????('-'?????? ????????? ??????????????????)<span>*</span>
											</p>
											<input type="text" id="member_tel" name="member_tel"
												required="required" value="${member.member_tel}">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>??????</p>
											<input type="text" id="member_address" name="member_address"
												value="${member.member_address }">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												??????<span>*</span>
											</p>
										</div>
										<div class="checkout__input__checkbox">
											<label for="member_gender1">?????? <input type="checkbox"
												id="member_gender1" name="member_gender" value="???">
												<span class="checkmark"></span></label>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input__checkbox">
											<label for="member_gender2">?????? <input type="checkbox"
												id="member_gender2" name="member_gender" value="???">
												<span class="checkmark"></span></label>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												????????????<span>*</span>
											</p>
											<input type="text" id="member_bir" name="member_bir"
												required="required" value="${member.member_bir}">
										</div>
									</div>

									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>????????? ??????</p>
											<input type="file" id="file" name="file">
										</div>
									</div>


									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												???????????? ??????<span>*</span>
											</p>
										</div>
										<div class="checkout__input__checkbox">
											<label for="genre0">??????&emsp; <input type="checkbox"
												id="genre0" name="genre_id" value="0"> <span
												class="checkmark"></span></label> <label for="genre1">??????&emsp;
												<input type="checkbox" id="genre1" name="genre_id" value="1">
												<span class="checkmark"></span>
											</label> <label for="genre2">??????&emsp; <input type="checkbox"
												id="genre2" name="genre_id" value="2"> <span
												class="checkmark"></span></label> <label for="genre3">????????????&emsp;
												<input type="checkbox" id="genre3" name="genre_id" value="3">
												<span class="checkmark"></span>
											</label> <label for="genre4">????????????&emsp; <input
												type="checkbox" id="genre4" name="genre_id" value="4">
												<span class="checkmark"></span></label> <label for="genre5">????????????&emsp;
												<input type="checkbox" id="genre5" name="genre_id" value="5">
												<span class="checkmark"></span>
											</label> <label for="genre6">??????&emsp; <input type="checkbox"
												id="genre6" name="genre_id" value="6"> <span
												class="checkmark"></span></label> <label for="genre7">??????&emsp;
												<input type="checkbox" id="genre7" name="genre_id" value="7">
												<span class="checkmark"></span>
											</label> <label for="genre8">??????&emsp; <input type="checkbox"
												id="genre8" name="genre_id" value="8"> <span
												class="checkmark"></span></label> <label for="genre9">??????&emsp;
												<input type="checkbox" id="genre9" name="genre_id" value="9">
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-md-12">

										<input type="hidden" id="member_id" name="member_id"
											value="${member.member_id}"> <input type="submit"
											class="site-btn" value="????????????" style="float: right;">


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