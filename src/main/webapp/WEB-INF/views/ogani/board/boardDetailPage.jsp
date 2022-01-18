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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<style>
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

#commbtn {
	margin-left: 10px;
}

#editbtn {
	margin: 5px;
}

.button {
	margin-top: 20px;
}
</style>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/breadcrumb.jpg" style="margin-bottom: 50px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Board</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Board</span>
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
						<h2>자유게시판</h2>
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

										<div>
											<img
												src="resources/ogani/img/board/${boardDetail.board_picture }"
												width="" height="" alt=""> 제목: <input type="text"
												id="board_title" name="board_title"
												value="${boardDetail.board_title }" readonly="readonly"><br>
											내용<br>
											<textarea name="board_content" id="board_content" rows="10"
												cols="130" readonly="readonly">${boardDetail.board_content }</textarea>
											<br>
											<c:if test="${sessionScope.member_id eq boardDetail.board_id }">
												<div class="button"
													style="display: flex; justify-content: flex-end;">
													<button type="submit" class="btn" id="editbtn"
														onclick="location.href='boardUpdatePage.do?board_num=${boardDetail.board_num }'">수정하기</button>
													<button type="submit" class="btn" id="editbtn"
														onclick="location.href='boardDelete.do?board_num=${boardDetail.board_num }'">삭제하기</button>
												</div>
											</c:if>
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

	<!-- 댓글 -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>댓글</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container"></div>
	<section class="mb-5">
		<div class="card bg-light">
			<div class="card-body">
				<!-- Comment form-->

				<!-- Comment with nested comments-->
				<c:forEach items="${bcommDetail }" var="detail">
					<div class="d-flex mb-4">
						<!-- Parent comment-->
						<div class="ms-3">
							<div class="fw-bold">${detail.writer }</div>
							${detail.content }
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</section>
	
	<c:if test="${sessionScope.member_author eq 'user' || sessionScope.member_author eq 'admin'}">
	<div class="artical-commentbox">
		<h4>댓글입력</h4>
		<div class="table-form">

			<form action="" method="post" id="commInsert" name="commInsert">
				<div>
					Comment <input type="text" id="content" name="content"> <input
						type="hidden" value="${boardDetail.board_num }" id="board_num"
						name="board_num"> <input type="hidden"
						value="${boardDetail.board_id }" id="writer" name="writer">
					<input type="button" class="btn" id="commbtn"
						onclick="commentInsert()" value="등록">
				</div>
			</form>

		</div>
	</div>
	</c:if>
	<script type="text/javascript">
		function commentInsert() {
			console.log($("#content").val());
			$.ajax({
				url : "commentInsert.do",
				type : "post",
				data : {
					"content" : $("#content").val(),
					"board_num" : $("#board_num").val(),
					"writer" : $("#writer").val()
				},
				//dataType : "json",
				success : function() {
					alert("성공")
					location.reload();
				}

			});
		}
	</script>
</body>
</html>