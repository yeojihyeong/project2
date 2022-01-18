<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/bookmen.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>공지사항등록</h2>
						<div class="breadcrumb__option"></div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12"></div>
			</div>
			<div class="checkout__form">
				<h4>공지사항 등록</h4>
				<form class="user" action="adminnoticeInsert.do"
					onsubmit="return formCheck()" method="post">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="checkout__input">
										<p>
											공지사항 제목
										</p>
										<input type="text" id="notice_title" name="notice_title"
											required="required"
											placeholder="공지사항 제목 입력란">
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="checkout__input">
										<p>
											내 용
										</p>
										<input type="text" id="notice_content" name="notice_content"
											required="required" placeholder="내용 입력란">
									</div>
								</div>

								<div class="col-lg-12 col-md-12">
									<button type="submit" class="btn btn-success btn-lg btn-block">등록</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		function isIdCheck() {
			var id = $("#book_isbn").val();
			if (id != '') {
				//ajax
				$.ajax({
					url : "ajaxIsIdCheck.do",
					type : "post",
					data : {
						"book_isbn" : id
					},
					success : function(result) {
						var b = (result === true); // 넘어온 값을 boolean 타입으로 변경 false = 0 true = 1
						if (b) {
							alert("등록 가능한 도서입니다.");
							$("#idCheck").val("YES");
							//$("#idCheck").prop("disabled", true);
							$("#book_cheonggu").focus();
						} else {
							alert("등록된 도서입니다.");
							$("#book_isbn").val('');
							$("#book_cheonggu").focus();
						}
					}
				});
			} else {
				alert("도서 ISBN을 입력하세요");
				$("#book_isbn").focus();
			}
		}
	</script>
</body>
</html>