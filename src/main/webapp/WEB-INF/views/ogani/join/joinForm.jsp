<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<script>

	$(document).ready(function(){
		$('input[type="checkbox"][name="member_gender"]').click(function(){
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="member_gender"]').prop('checked', false);
				$(this).prop('checked', true);
			}
		});
		
		$('input[type="checkbox"][name="genre_id"]').click(function(){
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="genre_id"]').prop('checked', false);
				$(this).prop('checked', true);
			}
		});
	});

</script>

<section class="breadcrumb-section set-bg" data-setbg="resources/ogani/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Join</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Join</span>
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
            <div class="checkout__form">
                <h4>Join</h4>
                <form class="user" action="join.do" onsubmit="return formCheck()" method="post">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="email" id="member_id" name="member_id" required="required" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="checkout__input">
                                    <br><br>
                                	<button type="button" class="site-btn" onclick="isIdCheck()" id="idCheck" value="NO">중복체크</button>
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
	                                <div class="col-lg-6 col-md-6">
	                                    <div class="checkout__input">
	                                        <p>Password check<span>*</span></p>
	                                        <input type="password" id="member_password1" name="member_password1" required="required" placeholder="Repeat Password">
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
                                        <input type="checkbox" id="genre0" name="genre_id" value="000"><span class="checkmark"></span></label>
                                    <label for="genre1">철학&emsp;
                                        <input type="checkbox" id="genre1" name="genre_id" value="100"><span class="checkmark"></span></label>
                                    <label for="genre2">종교&emsp;
                                        <input type="checkbox" id="genre2" name="genre_id" value="200"><span class="checkmark"></span></label>
                                    <label for="genre3">사회과학&emsp;
                                        <input type="checkbox" id="genre3" name="genre_id" value="300"><span class="checkmark"></span></label>
                                    <label for="genre4">자연과학&emsp;
                                        <input type="checkbox" id="genre4" name="genre_id" value="400"><span class="checkmark"></span></label>
                                    <label for="genre5">기술과학&emsp;
                                        <input type="checkbox" id="genre5" name="genre_id" value="500"><span class="checkmark"></span></label>
                                    <label for="genre6">예술&emsp;
                                        <input type="checkbox" id="genre6" name="genre_id" value="600"><span class="checkmark"></span></label>
                                    <label for="genre7">언어&emsp;
                                        <input type="checkbox" id="genre7" name="genre_id" value="700"><span class="checkmark"></span></label>
                                    <label for="genre8">문학&emsp;
                                        <input type="checkbox" id="genre8" name="genre_id" value="800"><span class="checkmark"></span></label>
                                    <label for="genre9">역사&emsp;
                                        <input type="checkbox" id="genre9" name="genre_id" value="900"><span class="checkmark"></span></label>
                                    </div>
                                </div>
                                
                        	<br>
                        	<div class="col-lg-12 col-md-12">
                        	<button type="submit" class="btn btn-success btn-lg btn-block">Join</button>
                        	</div>
                        	</div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">
    function isIdCheck(){
		var id = $("#member_id").val();
		if(id != ''){
			//ajax
			$.ajax({
				url : "ajaxIsIdCheck.do",
				type : "post",
				data : {"member_id" : id},
				success : function(result){
					var b = (result===true); // 넘어온 값을 boolean 타입으로 변경 false = 0 true = 1
					if(b){
						alert("사용가능한 아이디입니다.");
						$("#idCheck").val("YES");
						//$("#idCheck").prop("disabled", true);
						$("#member_password").focus();
					}else{
						alert("이미 사용중인 아이디입니다.");
						$("#member_id").val('');
						$("#member_id").focus();
					}
				}
			});
		} else{
			alert("ID를 입력하세요...");
			$("#member_id").focus();
		}
	}
    
    function formCheck(){
		if(user.idCheck.value == 'No'){ /* $("#idCheck").val == "No" */
			alert("아이디 중복 체크를 해주세요.");
			return false;
		}
		
		if($("#member_password").val() != $("#member_password1").val()){
			alert("패스워드가 일치하지 않습니다.");
			$("#member_password").val('');
			$("#member_password1").val('');
			$("#member_password").focus();
			return false;
		}
		return true;
		// frm.submit();
		
		
	}
    </script>
</body>
</html>