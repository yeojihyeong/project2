<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<script>

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /* /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; */ RegExp(/^[가-힣]{2,4}$/);
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([016789])([0-9]{3,4})([0-9]{4})$/;


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
		
		$('input[type="checkbox"][name="member_gender"]').each(function(){
			if($(this).val() == ${member.member_gender}){
				$(this).prop('checked', true);
			}
		})
		
		$('input[type="checkbox"][name="genre_id"]').each(function(){
			if($(this).val() == ${member.genre_id}){
				$(this).prop('checked', true);
			}
		})
		
		 $('#member_password').blur(function() {
		      if (pwJ.test($('#member_password').val())) {
		         console.log('true');
		         $('#pw_check').text('');
		      } else {
		         console.log('false');
		         $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
		         $('#pw_check').css('color', 'red');
		      }
		   });

		   //1~2 패스워드 일치 확인
		   $('#member_password1').blur(function() {
		      if ($('#member_password').val() != $(this).val()) {
		         $('#pw1_check').text('비밀번호가 일치하지 않습니다.');
		         $('#pw1_check').css('color', 'red');
		      } else {
		         $('#pw1_check').text('');
		      }
		   });

		   //이름에 특수문자 들어가지 않도록 설정
		   $("#member_name").blur(function() {
		      if (nameJ.test($(this).val())) {
		         console.log(nameJ.test($(this).val()));
		         $("#name_check").text('');
		      } else {
		         $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
		         $('#name_check').css('color', 'red');
		      }
		   });
		         // 생일 유효성 검사
		           var birthJ = false;
		           
		           // 생년월일   birthJ 유효성 검사
		           $('#member_bir').blur(function(){
		              var dateStr = $(this).val();      
		               var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
		               var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
		               var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
		               var today = new Date(); // 날짜 변수 선언
		               var yearNow = today.getFullYear(); // 올해 연도 가져옴
		              
		               if (dateStr.length <=8) {
		                 // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
		                  if (year > yearNow || year < 1900 ){
		                     
		                     $('#birth_check').text('생년월일을 확인해주세요');
		                    $('#birth_check').css('color', 'red');
		                  }  
		                  else if (month < 1 || month > 12) {
		                        
		                     $('#birth_check').text('생년월일을 확인해주세요 ');
		                    $('#birth_check').css('color', 'red'); 
		                  
		                  }else if (day < 1 || day > 31) {
		                     
		                     $('#birth_check').text('생년월일을 확인해주세요 ');
		                    $('#birth_check').css('color', 'red'); 
		                     
		                  }else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
		                     $('#birth_check').text('생년월일을 확인해주세요 ');
		                    $('#birth_check').css('color', 'red'); 
		                  }else if (month == 2) {
		                        var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		                        
		                      if (day>29 || (day==29 && !isleap)) {
		                         
		                         $('#birth_check').text('생년월일을 확인해주세요 ');
		                       $('#birth_check').css('color', 'red'); 
		                     
		                    }else{
		                       $('#birth_check').text('');
		                       birthJ = true;
		                    }
		                  }else{
		                     $('#birth_check').text(''); 
		                    birthJ = true;
		                 }//end of if
		                 }else{
		                    //1.입력된 생년월일이 8자 초과할때 :  auth:false
		                    $('#birth_check').text('생년월일을 확인해주세요 ');
		                    $('#birth_check').css('color', 'red');  
		                 }
		              }); //End of method /*
		 
		              // 휴대전화
		              $('#member_tel').blur(function(){
		                 if(phoneJ.test($(this).val())){
		                    console.log(phoneJ.test($(this).val()));
		                    $("#tel_check").text('');
		                 } else {
		                    $('#tel_check').text('휴대폰번호를 확인해주세요 ');
		                    $('#tel_check').css('color', 'red');
		                 }
		              });
		
		
		
	});

</script>

	<section class="breadcrumb-section set-bg"
		data-setbg="resources/ogani/img/breadcrumb.jpg">
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
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>회원정보</h4>
							<ul>
								<li><a href="myinfo.do">내정보</a></li>
								<li><a href="memberDeleteForm.do">회원탈퇴</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-9 col-md-7">
					<div class="blog__details__author">
						<div class="blog__details__author__pic">
						<c:choose>
							<c:when test="${member.member_picture eq null}">
								<img src="resources/ogani/img/product/details/product-details-1.jpg" alt=""><br><br>
							</c:when>
							<c:otherwise>
								<img alt="" src="resources/ogani/upload/${member.member_picture}"><br><br>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
					<br>
				
					<div class="product__details__text">
						<h3>${member_name }님의 내 정보</h3>
						<br>
						<hr>
						<br>
					</div>
					<form id="user" enctype="multipart/form-data" method="post">
						<div class="row">
							<div class="col-lg-9 col-md-7">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												Email
											</p>
											<input type="email" id="member_id" name="member_id" value="${member.member_id}" readonly>
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6 col-md-6">
	                                    <div class="checkout__input">
	                                        <p>Password<span>*</span></p>
	                                        <input type="password" id="member_password" name="member_password" required="required" placeholder="Password">
	                                        <div id="pw_check"></div>
	                                    </div>
	                                </div>
	                                <div class="col-lg-6 col-md-6">
	                                    <div class="checkout__input">
	                                        <p>Password check<span>*</span></p>
	                                        <input type="password" id="member_password1" name="member_password1" required="required" placeholder="Repeat Password">
	                                        <div id="pw1_check"></div>
	                                    </div>
	                                </div>
	                          </div>
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												Name<span>*</span>
											</p>
											<input type="text" id="member_name" name="member_name" required="required" value="${member.member_name}">
											<div id="name_check"></div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												휴대폰 번호('-'없이 번호만 입력해주세요)<span>*</span>
											</p>
											<input type="text" id="member_tel" name="member_tel" required="required" value="${member.member_tel}">
											<div id="tel_check"></div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>주소</p>
											<input type="text" id="member_address" name="member_address" value="${member.member_address }">
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												성별<span>*</span>
											</p>
										</div>
										<div class="checkout__input__checkbox">
											<label for="member_gender1">남자 <input type="checkbox" id="member_gender1" name="member_gender" value="1">
											<span class="checkmark"></span></label>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input__checkbox">
											<label for="member_gender2">여자 <input type="checkbox" id="member_gender2" name="member_gender" value="2">
											<span class="checkmark"></span></label>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												생년월일<span>*</span>
											</p>
											<input type="text" id="member_bir" name="member_bir" required="required" value="${member.member_bir}">
											<div id="birth_check"></div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												프로필 사진
											</p>
											<input type="file" id="file" name="file">
										</div>
									</div>
									

									<div class="col-lg-12 col-md-12">
										<div class="checkout__input">
											<p>
												선호하는 장르<span>*</span>
											</p>
										</div>
										<div class="checkout__input__checkbox">
											<label for="genre0">소설&emsp;
                                        <input type="checkbox" id="genre0" name="genre_id" value="101"><span class="checkmark"></span></label>
                                    <label for="genre1">에세이&emsp;
                                        <input type="checkbox" id="genre1" name="genre_id" value="102"><span class="checkmark"></span></label>
                                    <label for="genre2">예술/대중문화&emsp;
                                        <input type="checkbox" id="genre2" name="genre_id" value="103"><span class="checkmark"></span></label>
                                    <label for="genre3">만화&emsp;
                                        <input type="checkbox" id="genre3" name="genre_id" value="108"><span class="checkmark"></span></label>
                                    <label for="genre4">아동&emsp;
                                        <input type="checkbox" id="genre4" name="genre_id" value="110"><span class="checkmark"></span></label>
                                    <label for="genre5">경제경영&emsp;
                                        <input type="checkbox" id="genre5" name="genre_id" value="117"><span class="checkmark"></span></label>
                                    <label for="genre6">자기계발&emsp;
                                        <input type="checkbox" id="genre6" name="genre_id" value="118"><span class="checkmark"></span></label>
                                    <label for="genre7">자연과과학&emsp;
                                        <input type="checkbox" id="genre7" name="genre_id" value="116"><span class="checkmark"></span></label>
                                    <label for="genre8">인문&emsp;
                                        <input type="checkbox" id="genre8" name="genre_id" value="119"><span class="checkmark"></span></label>
                                    <label for="genre9">컴퓨터/인터넷&emsp;
                                        <input type="checkbox" id="genre9" name="genre_id" value="122"><span class="checkmark"></span></label>
                                    <label for="genre10">자격서/수험서&emsp;
                                        <input type="checkbox" id="genre10" name="genre_id" value="123"><span class="checkmark"></span></label>
                                    <label for="genre11">취미/레저&emsp;
                                        <input type="checkbox" id="genre11" name="genre_id" value="124"><span class="checkmark"></span></label>
                                    <label for="genre12">전공/대학교재&emsp;
                                        <input type="checkbox" id="genre12" name="genre_id" value="125"><span class="checkmark"></span></label>
                                    <label for="genre13">건강/뷰티&emsp;
                                        <input type="checkbox" id="genre13" name="genre_id" value="126"><span class="checkmark"></span></label>
                                    <label for="genre14">여행&emsp;
                                        <input type="checkbox" id="genre14" name="genre_id" value="128"><span class="checkmark"></span></label>
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-md-12">
										<button type="button" onclick="infoUpdate()" class="site-btn" style="float: right;">수정하기</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

<script type="text/javascript">

	function infoUpdate() {
		
		var inval_Arr = new Array(4).fill(false);
		
		if($("#member_password").val() != $("#member_password1").val()){
			alert("패스워드가 일치하지 않습니다.");
			$("#member_password").val('');
			$("#member_password1").val('');
			$("#member_password").focus();
			inval_Arr[0] = false;
			
		}else{
			 inval_Arr[0] = true;
		}
		
	     // 이름 정규식
	     if (nameJ.test($('#member_name').val())) {
	        inval_Arr[1] = true;   
	     } else {
	        inval_Arr[1] = false;
	        alert('이름을 확인하세요.');
	        
	     }
	     // 생년월일 정규식
	    
	     if(${member.member_bir} == $('#member_bir').val()){
	    	 inval_Arr[2] = true;
	     }else{
	     
	    	 if (birthJ) {
	 	        inval_Arr[2] = true; 
	 	     } else {
	 	        inval_Arr[2] = false;
	 	        alert('생년월일을 확인하세요.');
	 	       console.log("birthJ"+birthJ);
	 	     } 
	     
	     }
	     
	     // 휴대폰번호 정규식
	     if (phoneJ.test($('#member_tel').val())) {
	        console.log(phoneJ.test($('#member_tel').val()));
	        inval_Arr[3] = true;
	     } else {
	        inval_Arr[3] = false;
	        alert('휴대폰 번호를 확인하세요.');
	        
	     }
		
	     console.log("0:"+inval_Arr[0]);
	     console.log("1:"+inval_Arr[1]);
	     console.log("2:"+inval_Arr[2]);
	     console.log("3:"+inval_Arr[3]);
	     
	     function test(value){
	    	 return value == true;
	     }
		var check_ok = inval_Arr.every(test);
		console.log("check_ok:"+check_ok);
	
		
		if(check_ok == true){
			var formData = new FormData($('#user')[0]);
			console.log(formData);
			
			$.ajax({
				url: "memberUpdate.do",
				enctype: 'multipart/form-data',
				type: "POST",
				data: formData,
				processData: false,
				contentType: false,
				cache: false,
				success: function(result){
					console.log(result);
					if(result != 0){
						alert('정보가 수정되었습니다.');
						location.replace('myinfo.do');
						
					}else{
						alert("정보를 확인하세요.");
					}
				},
				error: function(error){
					console.log(error);
					alert("에러가 발생했습니다.");
				}
			})
		}
	}
	
</script>

</body>
</html>