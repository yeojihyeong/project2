<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
	
	<div class="col-lg-8">
		<div class="row">
			<div class="col-lg-4">
				<h4>내가 팔로우한 사람</h4><br>
				<div class="blog__details__author">
					<div class="blog__details__author__pic">
						<c:forEach items="${followee }" var="followee">
							<img id="followee_picture" alt="" src="resources/ogani/upload/${followee.memberVO.member_picture }"><br>
									${followee.memberVO.member_name }
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
			
			<h4>나를 팔로우한 사람</h4><br>
				<div class="blog__details__author">
					<div class="blog__details__author__pic">
						<c:forEach items="${follower }" var="follower">
							<img id="follower_picture" alt="" src="resources/ogani/upload/${follower.memberVO.member_picture }"><br>
									${follower.memberVO.member_name }
						</c:forEach>
			
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<%-- <c:forEach items="${followee }" var="followee">
						
					${followee.member_picture }
					${followee.member_name }
		</c:forEach> --%>

</body>
</html>