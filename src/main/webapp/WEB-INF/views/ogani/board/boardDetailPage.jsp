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

.button {
	margin-top: 20px;
	margin-bottom: 20px;
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

	<div class="container">
		<div class="col-lg-12">
			<div style="margin-top: 50px; margin-bottom: 30px;">
				<h3>게시판</h3>
			</div>
			<div>
				<div>
					<img src="resources/ogani/img/board/${boardDetail.board_picture }"
						width="" height="" alt=""> 제목: <input type="text"
						id="board_title" name="board_title"
						value="${boardDetail.board_title }" readonly="readonly"><br>
					내용<br>
					<textarea name="board_content" id="board_content" rows="10"
						cols="130" readonly="readonly">${boardDetail.board_content }</textarea>
					<br>
					<div class="button"
						style="display: flex; justify-content: flex-end;">
						<button type="submit" class="btn"
							onclick="location.href='boardUpdatePage.do?board_num=${boardDetail.board_num }'">수정하기</button>
						<button type="submit" class="btn"
							onclick="location.href='boardDelete.do?board_num=${boardDetail.board_num }'">삭제하기</button>
					</div>
				</div>
			</div>
		</div>


			<!-- <div class="comm-comm">
					<div class="grid1_of_2 left">
				<div class="grid_img">
					<a href=""><img src="images/pic10.jpg" alt=""></a>
				</div>
				<div class="grid_text">
					<h4 class="style1 list">
						<a href="#">Designer First</a>
					</h4>
					<h3 class="style">march 3, 2013 - 4.00 PM</h3>
					<p class="para top">All the Lorem Ipsum generators on the
						Internet tend to repeat predefined chunks as necessary, making
						this the first true generator on the Internet. It uses a
						dictionary of over 200 Latin words, combined with a handful of
						model sentence structures, to generate Lorem Ipsum which looks
						reasonable.</p>
					<a href="" class="btn1">Click to Reply</a>
				</div>
				<div class="clear"></div>
			</div> -->

			<div class="artical-commentbox">
				<h4>댓글입력</h4>
				<div class="table-form">
				
					<form action="" method="post" id="commInsert"
						name="commInsert">
						<div>
							Comment <input type="text" id="content" name="content"> <input
								type="hidden" value="${boardDetail.board_num }" id="board_num" name="board_num"> <input
								type="hidden" value="${boardDetail.board_id }" id="writer" name="writer">

						</div>
						<input type="button" class="btn" onclick="commentInsert()" value="댓글등록">
					</form>
					
				</div>
			</div>
	</div>
	<script type="text/javascript">
		function commentInsert() {
			console.log($("#content").val());
			$.ajax ({
				url : "commentInsert.do",
				type : "post",
				data : {"content" : $("#content").val(), "board_num" : $("#board_num").val(), "writer" : $("#writer").val()},
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