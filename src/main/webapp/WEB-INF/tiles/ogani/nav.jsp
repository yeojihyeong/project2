<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-lg-3">
			<div class="header__logo">
				<a href="home.do"><img src="resources/ogani/upload/book_logo.png" alt=""></a>
				<!--  로고 -->
			</div>
		</div>
		<div class="col-lg-6">
			<nav class="header__menu">
				<ul>
					<li class="active"><a href="home.do">Home</a></li>

					<li><a href="blog_list.do">Blog</a></li>
					<li><a href="#">Community</a>
						<ul class="header__menu__dropdown">
							<li><a href="noticeList.do">공지사항</a></li>
							<li><a href="boardList.do">자유게시판</a></li>
							<li><a href="faqList.do">FAQ</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
		<div class="col-lg-3">
			<div class="header__cart">
				<!-- <ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul> -->
				<!-- <div class="header__cart__price">
						item: <span>$150.00</span>
					</div> -->
			</div>
		</div>
	</div>
	<div class="humberger__open">
		<i class="fa fa-bars"></i>
	</div>
</div>