<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<header class="py-5 bg-light border-bottom mb-4">
	<div class="container">
		<div class="text-center my-5">
			<img alt="resources/ogani/img/그림2.png" src="resources/ogani/img/그림2.png">
			<h1 class="fw-bolder">${member2.member_name}</h1>
			<p class="lead mb-0">A room without books is like a body without a soul.</p>
			
			<c:if test="${member2.member_id eq member_id }">
			</c:if>
			
		</div>
	</div>
</header>