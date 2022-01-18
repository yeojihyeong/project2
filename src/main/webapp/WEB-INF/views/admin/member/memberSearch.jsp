<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
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

						<div class="product__details__text">
							<h3>${member_name }님의 정보</h3>
							<br>
						</div>
					</div>
					<ul>
						<li><b>이메일</b> <span>${member.member_id } </span></li>
						<li><b>이름</b> <span>${member.member_name }</span></li>
						<li><b>휴대폰번호</b> <span>${member.member_tel }</span></li>
						<li><b>주소</b> <span>${member.member_address }</span></li>
						<li><b>성별</b> <span>${member.member_gender }</span></li>
						<li><b>생년월일</b> <span>${member.member_bir }</span></li>

						<li>
							<div>
								<form action="memberDelete1.do" method="post">
									<input type="hidden" name="member_id" id="member_id" value="${member.member_id }"> <input type="submit"
										class="primary-btn"
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; float: right;"
										value="탈퇴">
								</form>
							</div>
							<div>
								<form action="adminMemberUpdate1.do" method="post">
									<input type="hidden" name="member_id" id="member_id" value="${member.member_id }">
										 <input type="submit"
										class="primary-btn"
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; float: right;"
										value="수정">
								</form>
							</div>



						</li>

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
		</div>
	</div>
</section>