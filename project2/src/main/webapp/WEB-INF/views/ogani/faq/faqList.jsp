<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link ref="stylesheet" href="resources/ogani/css/faq/faq-main.css"
	type="text/css">
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

label.menu {
	border: 2px solid #7fad39;
	width: 80%;
	height: 50px;
	font-size: 20px;
}

input#menu {
	display: none;
}

nav#main_nav {
	display: none;
	width: 80%;
}

input#menu:checked + nav#main_nav {
	display: block;
}

ul {
	list-style:none;
}

#main_nav> ul> li:nth-child(1) {
	border: 1px solid grey;
}
</style>
</head>
<body>
	<section class="blog-details-hero set-bg"
		data-setbg="resources/ogani/img/book.jpg">
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


	<section id="tabs" class="project-tab" style="margin-top: 50px">
		<div class="container">
			<div class="row">
				<div class="container-fluid px-4"
					style="display: flex; justify-content: space-between;">
					<h3 style="margin-bottom: 30px">자주하는 질문</h3>
					<button type="button" class="btn" style="margin-bottom: 50px;"
						onclick="location.href='faqInsertPage.do'">글쓰기</button>
				</div>
				<div class="col-md-12">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<table class="table" cellspacing="0">

							<tbody>
								<c:forEach items="${faqs }" var="faq">
									<label class="menu" for="${faq.faq_id }">Q: ${faq.faq_question }</label>
									<input id="${faq.faq_id }" type="checkbox">
									<nav id="main_nav">
										<ul>
											<li>A: ${faq.faq_answer }</li>
											<li><button type="submit" class="btn" style="margin-top: 15px;" onclick="location.href='faqDelete.do?faq_id=${faq.faq_id}'">삭제</button></li>
										</ul>
									</nav>
								</c:forEach>

							</tbody>
						</table>
					</div>



				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		function openCloseToc() {
			if (document.getElementById('toc-content').style.display === 'block') {
				document.getElementById('toc-content').style.display = 'none';
				document.getElementById('toc-toggle').textContent = '+';
			} else {
				document.getElementById('toc-content').style.display = 'block';
				document.getElementById('toc-toggle').textContent = '-';
			}
		}}
	</script>
</body>
</html>