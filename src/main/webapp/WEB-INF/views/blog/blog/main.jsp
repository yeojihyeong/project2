<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
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
	
	<c:forEach items="${viewAll }" var="list">
			<c:forEach items="${book }" var="book">
			<c:if test="${book.book_isbn eq list.book_isbn}">
			
		<div class="col-lg-4">
			<!-- Blog post-->
			
			<div class="card mb-2">
				<a href="#!"><img class="card-img-top"
					src="${book.book_picture }" alt="..." /></a>
				
				<div class="blog__item__text">
					<div class="small text-muted">${list.review_date }</div>
					<h2 class="card-title h4">${list.review_title }</h2>


					<a class="blog__btn" href="reviewDetailSelect.do?blog_id=${list.blog_id }" >Read more</a>

				</div>
			</div>
			
		</div>
		
		</c:if>
			</c:forEach>
			</c:forEach>
		
	</div>
	
	<a href="reviewForm.do"><button type="button" class="btn btn-secondary">글쓰기</button></a>

			<br>
	<!-- Pagination-->
	<nav aria-label="Pagination">
		<hr class="my-0" />
		<ul class="pagination justify-content-center my-4">
		<c:if test="${paging.startPage != 1 }">
			<li class="page-item"><a class="page-link" href="/blog_home.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">Newer</a></li>
		</c:if>
		
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<li class="page-item active" aria-current="page"><a class="page-link" href="/blog_home.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<li class="page-item"><a class="page-link" href="/blog_home.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
				</c:when>
			</c:choose>
		</c:forEach>
			
		<c:if test="${paging.endPage != paging.lastPage }">
			<li class="page-item"><a class="page-link" href="/blog_home.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">Older</a></li>
		</c:if>	
		</ul>
	</nav>
</div>

</html>