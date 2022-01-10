<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">도서목록</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 도서목록
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>Isbn</th>
							<th>도서 이름</th>
							<th>저자</th>
							<th>출판사</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${books }" var="book">
							<tr onclick="bookSearch()">
								<td>${book.book_isbn }</td>
								<td>${book.book_name }</td>
								<td>${book.book_write }</td>
								<td>${book.book_publis }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div>
			<button><a id="btn" href="bookInsertForm.do"> 등록</a></button>
			</div>
		</div>
	</div>
</main>
<script type="text/javascript">

</script>
</html>