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
	<h3>나의 이웃목록</h3>
	<div class="blog__details__author">
		<div class="blog__details__author__pic">
			<c:forEach items="${follower }" var="follower">
				<img id="followee_picture" alt="" src="resources/ogani/upload/${follower.memberVO.member_picture }"><br>
						${follower.memberVO.member_name }
	</c:forEach>
</div>
</div>
	<%-- <c:forEach items="${followee }" var="followee">
					
				${followee.member_picture }
				${followee.member_name }
	</c:forEach> --%>

</body>
</html>