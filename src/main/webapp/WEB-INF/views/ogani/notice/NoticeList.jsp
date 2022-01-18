<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<!-- <link href="resources/admin/css/styles.css" rel="stylesheet" /> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<style>
thead>tr, tfoot>tr {
	text-align: center;
}

.spad {
	padding-top: 0;
	padding-bottom: 0;
}

.write {
	float: right;
}

.title> button {
	float: left;
}

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
	<section class="blog-details-hero set-bg"
		data-setbg="resources/ogani/img/book.jpg" style="margin-bottom: 50px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="blog__details__hero__text">
						<h2>The Moment You Need To Remove Garlic From The Menu</h2>
						<ul>
							<li>By Michael Scofield</li>
							<li>January 14, 2019</li>
							<li>8 Comments</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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
					<div id="layoutSidenav_content" >
						<main>
							<div class="container-fluid px-4">
								<div class="card mb-4">			
									<div class="card-body">
										<table id="datatablesSimple">
											<colgroup>
												<col style="width: 20%">
												<col style="width: 60%">
												<col style="width: 20%">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${notices }" var="notice">
													<tr>
														<td>${notice.notice_num }</td>
														<td
															onclick="location.href='noticeDetailPage.do?notice_num=${notice.notice_num}'">${notice.notice_title }</td>
															<td>${notice.notice_date }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div class="button" style="display: flex; justify-content: flex-end;">
										<button type="button" style="margin-bottom: 50px;" class="btn" onclick=notice()>글쓰기</button>
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

	<script type="text/javascript">
		function notice() {
			location.href = "noticeInsertPage.do";
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/datatables-simple-demo.js"></script>
</body>
</html>