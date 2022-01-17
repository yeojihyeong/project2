<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
						<button id="follow_btn" onclick="addFollow()" type="button" class="btn btn-dark">�ȷο�</button>
					</form>
				</c:if>
					<ul class="list-unstyled mb-0">
						<li><a href="blog_home.do" style="color: inherit">Ȩ���ΰ���</a></li>
						<li><a href="wishBook.do" style="color: inherit" >�а�;��</a></li>
						<li><a href="readingBook.do"style="color: inherit" >�д����̿���</a></li>
						<li><a href="readBook.do" style="color: inherit" >�о����</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Side widget-->
	<div class="card mb-4">
		<div class="card-header">Following</div>
		<div class="card-body">my following list</div>

		<div class="card-body" ><a style="color: inherit" href="following.do">�ȷο���� </a></div>

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
					alert("�ȷο� �� �� �����ϴ�.");
				}
				
			},error: function(error){
				console.log(error);
				alert("������ �߻��߽��ϴ�.");
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
				$('#follow_btn').text('�ȷο�����'); */
				alert("�ȷο�Ǿ����ϴ�.");
				
			},
			error: function(error){
				console.log(error);
				alert("�ȷο� �� �� �����ϴ�.");
			}
		})
		}
	}

</script>
</body>