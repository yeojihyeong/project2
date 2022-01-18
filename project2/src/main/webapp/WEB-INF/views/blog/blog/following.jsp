<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>나의 이웃목록</h3>

	<c:forEach items="${follower }" var="follower">
					
				${follower.member_picture }
				${follower.member_name }
	</c:forEach>

	<c:forEach items="${followee }" var="followee">
					
				${followee.member_picture }
				${followee.member_name }
	</c:forEach>

</body>
</html>