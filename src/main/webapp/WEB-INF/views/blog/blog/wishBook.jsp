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
	<h3 style="margin-bottom : 30px;">읽고 싶은 책</h3>

	<div class="col-lg-8">
		<!-- Nested row for non-featured blog posts-->
		<div class="row">
			<div class="col-lg-6">
				<!-- Blog post-->
				<c:forEach items="${wish }" var="w">
					<div class="card mb-4">
						${w.book_picture }
						<div class="card-body">
							<div class="small text-muted">${w.book_write }</div>
							<h2 class="card-title h4">${w.book_name }</h2>
							<a class="btn btn-primary" href="#!" style="background-color : rgb(127, 173, 57); border : none;">상세보기 →</a>
						
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
</body>

</html>