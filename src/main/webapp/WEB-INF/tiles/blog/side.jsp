<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<div class="col-lg-4">
	<!-- Search widget-->
	<!-- Categories widget-->
	<div class="card mb-4">
		<div class="card-header">Categories</div>
		<div class="card-body">
			<div class="row">
				<div class="col-sm-6">
				<c:if test="${member_id ne review.member_id }">
					<form id="followForm" method="post">
					<input id="blog_id_for_follow" name="blog_id" type="hidden" value="${review.blog_id }">
						<button id="follow_btn" onclick="addFollow()" type="button" class="btn btn-dark">팔로우</button>
					</form>
				</c:if>
					<ul class="list-unstyled mb-0">
						<li><a href="blog_home.do" style="color: inherit">홈으로가기</a></li>
						<li><a href="wishBook.do" style="color: inherit" >읽고싶어요</a></li>
						<li><a href="readingBook.do"style="color: inherit" >읽는중이에요</a></li>
						<li><a href="readBook.do" style="color: inherit" >읽었어요</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Side widget-->
	<div class="card mb-4">
		<div class="card-header">Following</div>
		<div class="card-body">my following list</div>


		<div class="card-body" ><a style="color: inherit" href="following.do">팔로우관리 </a></div>


	</div>
</div>

<script type="text/javascript">

	function addFollow(){
		
		$.ajax({
			url: "ajaxIsFollowCheck.do",
			type: "POST",
			data: {blog_id : $('#blog_id_for_follow').val()},
			success: function(result){
				
				if(result){
					
					follow();
					
				}else{
					if(!confirm("팔로우를 해제하시겠습니까?")){
						
					}else{
						
						unfollow();
					}
					
				}
				
			},error: function(error){
				console.log(error);
				alert("오류가 발생했습니다.");
			}
		})
		
		var follow = function(){
			
			$.ajax({
				url: "ajaxinsertFollow.do",
				type: "POST",
				data: {blog_id : $('#blog_id_for_follow').val()},
				success: function(result){
					console.log(result);
					/* $('#follow_btn').attr('class', 'btn btn-outline-dark');
					$('#follow_btn').text('팔로우해제'); */
					alert("팔로우되었습니다.");
					
				},
				error: function(error){
					console.log(error);
					alert("팔로우 할 수 없습니다.");
				}
			})
		}
		
			var unfollow = function(){
			
				$.ajax({
					url: "ajaxdeleteFollow.do",
					type: "POST",
					data: {blog_id : $('#blog_id_for_follow').val()},
					success: function(result){
						console.log(result);
						alert("팔로우가 해제되었습니다.");
						
					},
					error: function(error){
						console.log(error);
						alert("오류가 발생했습니다.");
					}
				})
			}
		
		
	}

</script>
</body>