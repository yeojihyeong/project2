<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>읽고 싶은 책</h3>

	<div class="col-lg-8">
		<!-- Nested row for non-featured blog posts-->
		<div class="row">
			<div class="col-lg-6">
				<!-- Blog post-->
				<c:forEach items="${reading }" var="reading">
					<div class="card mb-4">
						<a href="#!"><img class="card-img-top"
							src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
						<div class="card-body">
							<div class="small text-muted">${reading.book_write }</div>
							<h2 class="card-title h4">${reading.book_name }</h2>
							<a class="btn btn-primary" href="#!">detail →</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
</body>
</html>