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
				<c:forEach items="${read }" var="read">
					<div class="card mb-4">
						<a href="#!"><img class="card-img-top"
							src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
						<div class="card-body">
							<div class="small text-muted">${read.book_write }</div>
							<h2 class="card-title h4">${read.book_name }</h2>
							<a class="btn btn-primary" href="#!">detail →</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<nav aria-label="Pagination">
		<hr class="my-0" />
		<ul class="pagination justify-content-center my-4">
			<c:if test="${paging.startPage != 1 }">
				<li class="page-item"><a class="page-link"
					href="/blog_home.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">Newer</a></li>
			</c:if>

			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<li class="page-item active" aria-current="page"><a
							class="page-link"
							href="/blog_home.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<li class="page-item"><a class="page-link"
							href="/blog_home.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
					</c:when>
				</c:choose>
			</c:forEach>

			<c:if test="${paging.endPage != paging.lastPage }">
				<li class="page-item"><a class="page-link"
					href="/blog_home.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">Older</a></li>
			</c:if>
		</ul>
	</nav>
</body>
</html>