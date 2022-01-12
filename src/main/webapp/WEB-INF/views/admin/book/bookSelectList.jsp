<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
/* 여기 변경하기 */
	$(document).ready(function() {
		$('.actionTd').on('click', function(e) {
			console.log(e.target.parentNode.children[0].data);
			e.preventDefault();
			$('#book_isbn').val(e.target.parentNode.children[0].data);  
			$('#frd').submit();
		});
	});
</script>
<main>
	<%
	String book_isbn = (String)session.getAttribute("book_isbn");
	
	%>

	<div class="container-fluid px-4">
		<h1 class="mt-4">도서목록</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 도서목록
			</div>
			<div class="card-body">
				<form action="bookSearch.do" id='frd' method="post">
				<input type="hidden" name="book_isbn" id='book_isbn'>
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
							<tr>
								<td class='actionTd'>${book.book_isbn }</td>
								<td class='actionTd'>${book.book_name }</td>
								<td class='actionTd'>${book.book_write }</td>
								<td class='actionTd'>${book.book_publis }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
			</div>
			<div>
			<button><a id="btn" href="bookInsertForm.do"> 등록</a></button>
			</div>
		</div>
	</div>
</main>
</html>