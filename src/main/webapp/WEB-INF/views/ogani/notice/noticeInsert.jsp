<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btn {
	font-size: 14px;
	color: #ffffff;
	font-weight: 800;
	text-transform: uppercase;
	display: inline-block;
	padding: 13px 30px 12px;
	background: #7fad39;
	border: none;
}
</style>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/bookmen.jpg" style="margin-bottom: 50px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Notice</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Notice</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Breadcrumb Section End -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>공지사항</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div id="layoutSidenav" class="col-lg-12 col-md-12 col-sm-12">
					<div id="layoutSidenav_content">
						<main>
							<div class="container-fluid px-4">
								<div class="card mb-4">
									<div class="card-body">
										<div class="insert">
											<form action="noticeInsert.do" id="noticeInsert"
												name="noticeInsert">
												제목: <input type="text" name="notice_title"
													style="width: 35%; border-radius: 7px;" id="notice_title"><br>
												<br> 내용<br>
												<textarea name="notice_content" id="notice_content"
													rows="10" cols="130" style="width:95%; border-radius: 7px;"></textarea>
												<br> <br> <input type="submit" class="btn"
													value="등록">
											</form>
										</div>
									</div>
								</div>
							</div>
						</main>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>