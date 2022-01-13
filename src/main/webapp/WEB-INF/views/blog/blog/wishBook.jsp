<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>읽고 싶은 책</h3>

	<div class="col-lg-8">
		<!-- Nested row for non-featured blog posts-->
		<div class="row">
			<div class="col-lg-6">
				<!-- Blog post-->
				<c:forEach items="${viewAll }" var="list">
					<div class="card mb-4">
						<a href="#!"><img class="card-img-top"
							src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
						<div class="card-body">
							<div class="small text-muted">${wish.book_name }</div>
							<h2 class="card-title h4">${wish.book_write }</h2>
							${wish.wish_id }
							<a class="btn btn-primary" href="#!">Read more →</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>