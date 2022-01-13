<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('.actionTd').on('click', function(e) {
			console.log(e.target.parentNode.children[0].data);
			e.preventDefault();
			$('#notice_num').val(e.target.parentNode.children[0].data);  
			$('#frd').submit();
		});
	});
</script>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">공지사항목록</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 공지사항목록
			</div>
			<div class="card-body">
				<form action="noticeSearch.do" id='frd' method="post">
				<input type="hidden" name="notice_num" id='notice_num'>
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>순번</th>
							<th>공지사항 제목</th>
							<th>내용</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${notices }" var="notice">
							<tr>
								<td class='actionTd'>${notice.notice_num }</td>
								<td class='actionTd'>${notice.notice_title }</td>
								<td class='actionTd'>${notice.notice_content }</td>
								<td class='actionTd'>${notice.notice_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
			</div>
			<div>
			<button><a id="btn" href=".do"> 등록</a></button>
			</div>
		</div>
	</div>
</main>
</html>