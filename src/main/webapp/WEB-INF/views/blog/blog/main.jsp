<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
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
					<div class="small text-muted">${list.review_date }</div>
					<h2 class="card-title h4">${list.review_title }</h2>
					<a class="btn btn-primary" href="#!">Read more ¡æ</a>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
	<!-- Pagination-->
	<nav aria-label="Pagination">
		<hr class="my-0" />
		<ul class="pagination justify-content-center my-4">
			<li class="page-item disabled"><a class="page-link" href="#"
				tabindex="-1" aria-disabled="true">Newer</a></li>
			<li class="page-item active" aria-current="page"><a
				class="page-link" href="#!">1</a></li>
			<li class="page-item"><a class="page-link" href="#!">2</a></li>
			<li class="page-item"><a class="page-link" href="#!">3</a></li>
			<li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
			<li class="page-item"><a class="page-link" href="#!">15</a></li>
			<li class="page-item"><a class="page-link" href="#!">Older</a></li>
		</ul>
	</nav>
</div>
</html>