<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="breadcrumb-section set-bg" data-setbg="resources/ogani/img/bookmen.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>회원탈퇴</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>회원탈퇴</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
  <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                </div>
            </div>
            <div class="row">
            <div class="col-lg-6" style="float: none; margin: 0 auto;">
            <div class="checkout__form">
                <h4>회원탈퇴</h4>
                <form class="userdelete" action="memberDelete.do" method="post">
                    <div class="row">
                        <div class="col-lg-12 col-md-12" style="text-align:center">
                       탈퇴 전 본인인증을 위해 비밀번호를 입력해주십시오.<br>
                        	<br>
                        	<br>
                        	
                        	<div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Email</p>
                                        <input type="email" id="member_id" name="member_id" value="${member.member_id}" readonly>
                                    </div>
                                </div>
                            </div>
                        	
                        	<div class="row">
	                            <div class="col-lg-12">
	                                <div class="checkout__input">
	                                    <p>Password</p>
	                                    <input type="password" id="member_password" name="member_password" placeholder="Password">
	                                </div>
	                            </div>
                            </div>
                        	<br>
                        	<br>
                        	<button type="submit" class="btn btn-success">탈퇴</button>
                        	<button onclick="location.href='home.do'" type="button" class="btn btn-secondary">취소</button>
                        </div>
                    </div>
                </form>
                </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>