<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section class="breadcrumb-section set-bg" data-setbg="resources/ogani/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>MyInfo</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a><span>Info</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                <div class="blog__details__author">
                    <div class="blog__details__author__pic">
                    	<img src="resources/ogani/img/product/details/product-details-1.jpg" alt="">
                    	<br><br>
                    </div>
                    
                   </div>
                </div>
                </div>
               
                <div class="col-lg-12 col-md-12">
                    <div class="product__details__text">
                        <h3>${member_name } 님의 정보</h3><br>
                        <hr>
                        <br>
                        <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="email" id="member_id" name="member_id" required="required" placeholder="Email">
                                    </div>
                                </div>
                                
                            </div>
                            
                            <div class="row">
	                                <div class="col-lg-6 col-md-6">
	                                    <div class="checkout__input">
	                                        <p>Password<span>*</span></p>
	                                        <input type="password" id="member_password" name="member_password" required="required" placeholder="Password">
	                                    </div>
	                                </div>
	                                
	                          </div>
	                          <div class="row">
                              <div class="col-lg-12 col-md-12">
                                    <div class="checkout__input">
                                        <p>Name<span>*</span></p>
                                        <input type="text" id="member_name" name="member_name" required="required" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="checkout__input">
                                        <p>휴대폰 번호('-'없이 번호만 입력해주세요)<span>*</span></p>
                                        <input type="text" id="member_tel" name="member_tel" required="required" placeholder="Telephone">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="checkout__input">
                                        <p>주소</p>
                                        <input type="text" id="member_address" name="member_address" placeholder="Address">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                <div class="checkout__input">
                                	<p>성별<span>*</span></p>
                                </div>
                                    <div class="checkout__input__checkbox">
                                    <label for="member_gender1">남자
                                        <input type="checkbox" id="member_gender1" name="member_gender" value="남"><span class="checkmark"></span></label>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                	<div class="checkout__input__checkbox">
                                    <label for="member_gender2">여자
                                        <input type="checkbox" id="member_gender2" name="member_gender" value="여"><span class="checkmark"></span></label>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="checkout__input">
                                        <p>생년월일<span>*</span></p>
                                        <input type="text" id="member_bir" name="member_bir" required="required" placeholder="ex)19990101">
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 col-md-12">
                                <div class="checkout__input">
                                <p>선호하는 장르<span>*</span></p>
                                </div>
                                    <div class="checkout__input__checkbox">
                                    <label for="genre0">총류&emsp;
                                        <input type="checkbox" id="genre0" name="genre_id" value="0"><span class="checkmark"></span></label>
                                    <label for="genre1">철학&emsp;
                                        <input type="checkbox" id="genre1" name="genre_id" value="1"><span class="checkmark"></span></label>
                                    <label for="genre2">종교&emsp;
                                        <input type="checkbox" id="genre2" name="genre_id" value="2"><span class="checkmark"></span></label>
                                    <label for="genre3">사회과학&emsp;
                                        <input type="checkbox" id="genre3" name="genre_id" value="3"><span class="checkmark"></span></label>
                                    <label for="genre4">자연과학&emsp;
                                        <input type="checkbox" id="genre4" name="genre_id" value="4"><span class="checkmark"></span></label>
                                    <label for="genre5">기술과학&emsp;
                                        <input type="checkbox" id="genre5" name="genre_id" value="5"><span class="checkmark"></span></label>
                                    <label for="genre6">예술&emsp;
                                        <input type="checkbox" id="genre6" name="genre_id" value="6"><span class="checkmark"></span></label>
                                    <label for="genre7">언어&emsp;
                                        <input type="checkbox" id="genre7" name="genre_id" value="7"><span class="checkmark"></span></label>
                                    <label for="genre8">문학&emsp;
                                        <input type="checkbox" id="genre8" name="genre_id" value="8"><span class="checkmark"></span></label>
                                    <label for="genre9">역사&emsp;
                                        <input type="checkbox" id="genre9" name="genre_id" value="9"><span class="checkmark"></span></label>
                                    </div>
                                </div>
                                
                        	<br>
                        	<div class="col-lg-12 col-md-12">
                        	<button type="button" class="site-btn">수정하기</button>
                        	</div>
                        	</div>
                        </div>
                    </div>
                    </div>
                </div>
               
        </div>
    </section>

</body>
</html>