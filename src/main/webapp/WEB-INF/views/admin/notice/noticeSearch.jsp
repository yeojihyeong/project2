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
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												내용
											</p>
											<input type="text" id="notice_content" name="notice_content"
												required="required" value="${notice.notice_content}" readonly="readonly">
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-md-12">
										<form action="adminNoticeUpdate1.do" method="post">
											<input type="hidden" name="notice_num" id="notice_num" value="${notice.notice_num }">
											<input type="submit" value="수정" class="site-btn" style="float: right;">
										</form> 

										<form action="memberDelete1.do" method="post">
											<input type="hidden" name="notice_num" id="notice_num" value="${notice.notice_num }">
											<input type="submit" value="삭제" class="site-btn" style="float: right;">
										</form>
									</div>
								</div>
							</div>
						</div>
					
				</div>
			</div>
		</div>
	</section>
</html>