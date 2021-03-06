<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<!-- <ul>
							<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
							<li>Free Shipping for all Order of $99</li>
						</ul> -->
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<!-- <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a> -->
						</div>
						<div class="header__top__right__language">
							<!-- <img src="resources/ogani/img/language.png" alt="">
							<div>English</div>
							<span class="arrow_carrot-down"></span>
							<ul>
								<li><a href="#">Spanis</a></li>
								<li><a href="#">English</a></li>
							</ul> -->
						</div>
						
						<c:choose>
						<c:when test="${member_id ne null && member_author == 'admin'}">
							<div class="header__top__right__language">
							<div>&nbsp;<i class="fa fa-user"></i> MyPage</div>
							<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="main.do"> Management</a></li>
								</ul>
							</div>
						</c:when>
						<c:when test="${member_id ne null && member_author == 'user'}">
						<div class="header__top__right__language">
							<div>&nbsp;<i class="fa fa-user"></i> MyPage</div>
							<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="myinfo.do"> Info</a></li>
									<li><a href="blog_home.do"> Blog</a></li>
								</ul>
							</div>
						</c:when>
						<c:otherwise>
							<div class="header__top__right__auth">
								<a href="loginForm.do"><i class="fa fa-user"></i> Login</a>
							</div>
							<div class="header__top__right__auth">
								<a href="joinForm.do">&nbsp;<i class="fa fa-user"></i> Join</a>
							</div>
						</c:otherwise>
						</c:choose>
						
						<c:if test="${member_id ne null }">
							<div class="header__top__right__auth">
								<a href="logout.do"><i class="fa fa-user"></i> Logout</a>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
</header>

<!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                </div>
                
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form name="search-form" action="mainBookSearchList.do" method="post">
                                <!-- <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div> -->
                                <input type="text" placeholder="???????????? ???????????????" name="keyword" value="">
                                <select name="type">
                                	<option value="all">??????</option>
                                	<!-- <option value="book_name">??????</option>
                                	<option value="book_write">??????</option>
                                	<option value="book_publis">?????????</option> -->
                                	
                                </select>
                               
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <!-- <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Hero Section End -->