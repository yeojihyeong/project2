<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
    border-collapse: collapse;
    width: 100%;
    text-align-last: center;
	}
</style>
</head>
<body>
<section class="blog-details-hero set-bg" data-setbg="resources/ogani/img/book.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>The Moment You Need To Remove Garlic From The Menu</h2>
                        <ul>
                            <li>By Michael Scofield</li>
                            <li>January 14, 2019</li>
                            <li>8 Comments</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
<div align="center">
	<h3>공지사항</h3>
	<div class="container">
                <div class="row">
	<div class="col-md-12">
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${notices }" var="notice">
					<tr>
						<td>${notice.notice_num }</td>
						<td onclick="location.href='noticeDetailPage.do?notice_num=${notice.notice_num}'">${notice.notice_title }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<button type="button" onclick=notice()>글쓰기</button>
</div>
</div>
</div>
<script type="text/javascript">
	function notice() {
		location.href = "noticeInsertPage.do";
	}
	
</script>
</body>
</html>