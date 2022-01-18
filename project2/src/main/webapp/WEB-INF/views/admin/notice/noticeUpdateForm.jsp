<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-7">
				<div class="product__details__text">
					<h3>${notice.notice_title }</h3>
					<br>
					<hr>
					<br>
				</div>
				<div class="row">
					<div class="col-lg-9 col-md-7">
						<form action="noticeUpdate1.do" method="post">
							<div class="row">
								<div class="col-lg-12 col-md-12">

									<div class="checkout__input">
										<p>제목</p>
										<input type="text" id="notice_title" name="notice_title"
											required="required" value="${notice.notice_title}">
									</div>
									<div class="checkout__input">
										<p>내용</p>
										<input type="text" id="notice_content" name="notice_content"
											required="required" value="${notice.notice_content}">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-md-12">
									<input type="hidden" name="notice_num" id="notice_num"
										value="${notice.notice_num }"> <input type="submit"
										value="수정완료" class="site-btn" style="float: right;">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</html>