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
			$('#member_id').val(e.target.parentNode.children[0].data);  
			$('#frd').submit();
		});
	});
</script>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">회원 목록</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 회원목록
			</div>
			<div class="card-body">
			<form action="adminMemberSearch.do" id='frd' method="post">
			<input type="hidden" name="member_id" id="member_id"> 
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>성별</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${members }" var="member">
							<tr>
								<td class='actionTd'>${member.member_id }</td>
								<td class='actionTd'>${member.member_name }</td>
								<td class='actionTd'>${member.member_tel }</td>
								<td class='actionTd'>${member.member_address }</td>
								<td class='actionTd'>${member.member_gender }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
			</div>
		</div>
	</div>
</main>
</html>