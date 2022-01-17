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
                        <h2>Login</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Login</span>
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
                    <h6><span class="icon_tag_alt"></span> 계정이 없으신가요? <a href="joinForm.do">지금 가입하기</a>
                    </h6>
                </div>       
            </div>
            <div class="row">
            <div class="col-lg-6" style="float: none; margin: 0 auto;">
            <div class="checkout__form">
                <h4>Login</h4>
                <form class="user" action="login.do" method="post">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Email</p>
                                        <input type="email" id="member_id" name="member_id" placeholder="Email">
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
                        	
                        	<button type="submit" class="btn btn-success btn-lg btn-block">LOGIN</button>
                        	
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