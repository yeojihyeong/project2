<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#book_cover{
	width: 100px;
	height: 150px;
}

/* table{
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td{
	border-bottom: 1px solid #444444;
	padding: 5px;
} */

</style>
</head>

<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/blog/css/fontawesome-stars.css">
<script type="text/javascript" src="resources/blog/js/jquery.barrating.min.js"></script>

<body>

<script>
	$(document).ready(function() {
		$('.actionTd').on('click', function(e) {
			console.log(e.target.parentNode.children[0].data);
			e.preventDefault();
			$('#book_isbn').val(e.target.parentNode.children[0].data);  
			$('#frd').submit();
		});
	});
</script>

<section class="breadcrumb-section set-bg" data-setbg="resources/ogani/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>검색결과</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">검색결과</a>
                            <span>검색결과</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="checkout spad">
        <div class="container">
            <div class="row">
            	<div class="col-lg-10" style="float: none; margin: 0 auto;">
                <form action="bookDetail.do" id='frd' method="post">
				<input type="hidden" name="book_isbn" id='book_isbn'>
	                <table class="table">
		                <thead>
		                	<tr>
		                		<th></th>
		                		<th></th>
		                		<th></th>
		                		<th></th>
		                		<th></th>
		                		<th></th>
		                	</tr>
		                </thead>
		                <tbody>
		                	<c:forEach items="${list }" var="list">
		                		<tr>
		                			<td class='actionTd'> <c:out value="${list.book_isbn}"></c:out> </td>
		                			<td class='actionTd'> <img id="book_cover" alt="" src="${list.book_picture}"> </td>
		                			<td class='actionTd'> <c:out value="${list.book_name}"></c:out> </td>
		                			<td> <c:out value="${list.book_write}"></c:out> </td>
		                			<td> <c:out value="${list.book_publis}"></c:out> </td>
		                			<td>별점칸</td>
		                	</c:forEach>
		                </tbody>
	                </table>
	                </form>
                </div>
            </div>
        </div>
    </section>

</body>
</html>