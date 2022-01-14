<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">회원 목록</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 회원목록
			</div>
			<div class="card-body">
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
								<td>${member.member_id }</td>
								<td>${member.member_name }</td>
								<td>${member.member_tel }</td>
								<td>${member.member_address }</td>
								<td>${member.member_gender }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
<script type="text/javascript">
	
</script>
</html>