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
						<h2>도서등록</h2>
						<div class="breadcrumb__option">
							<a href="home.do">Home</a> <span>Join</span>
						</div>
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
				<h4>Join</h4>
				<form class="user" action="bookInsert.do" onsubmit="return formCheck()" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="checkout__input">
										<p>
											도서 ISBN<span>*</span>
										</p>
										<input type="text" id="book_isbn" name="book_isbn"
											required="required" placeholder="도서 Isbn">
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="checkout__input">
										<br> <br>
										<button type="button" class="site-btn" onclick="isIdCheck()"
											id="idCheck" value="NO">중복체크</button>
									</div>
								</div>
							</div>
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="checkout__input">
									<p>
										청구번호<span>*</span>
									</p>
									<input type="text" id="book_cheonggu" name="book_cheonggu"
										required="required" placeholder="ex)100105">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="checkout__input">
									<p>
										도서명<span>*</span>
									</p>
									<input type="text" id="book_name" name="book_name"
										required="required" placeholder="ex)처음 해보는 Servlet&JSP 프로그래밍">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="checkout__input">
									<p>
										도서 내용<span>*</span>
									</p>
									<input type="text" id="book_content" name="book_content"
										required="required"
										placeholder="ex) Servlet&Jsp 입문자를 위한 교재입니다.">
								</div>
							</div>
							<div class="col-lg-12 col-md-12">
								<div class="checkout__input">
									<p>
										저 자<span>*</span>
									</p>
									<input type="text" id="book_write" name="book_write"
										required="required" placeholder="ex) 김김김">
								</div>
							</div>
							<div class="col-lg-12 col-md-12">
								<div class="checkout__input">
									<p>도서 총 페이지 수</p>
									<input type="number" id="book_page" name="book_page"
										placeholder="ex)758">
								</div>
							</div>
							<div class="col-lg-12 col-md-12">
								<div class="checkout__input">
									<p>
										출판사<span>*</span>
									</p>
									<input type="text" id="book_publis" name="book_publis"
										required="required" placeholder="ex)Ruby paper">
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="checkout__input">
										<p>
											이미지<span>*</span>
										</p>
										<input type="file" id='file' name='file'>
									</div>
								</div>
							</div>

							<div class="col-lg-12 col-md-12">
								<button type="submit" class="btn btn-success btn-lg btn-block">도서 등록</button>
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