<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<header class="py-5 bg-light border-bottom mb-4">
	<div class="container">
		<div class="text-center my-5">
			<h1 class="fw-bolder">${member2.member_name}</h1>
			<p class="lead mb-0">A room without books is like a body without a soul.</p>
			
			<c:if test="${member2.member_id eq member_id }">
			</c:if>
			
		</div>
	</div>
</header>