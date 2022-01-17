<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    <h1>수정하기</h1>
	<form action="noticeUpdate.do" id="noticeUpdate" name="noticeUpdate">
		<div>
			제목: <input type="text" name="notice_title" id="notice_title">
			내용: <input type="text" name="notice_content" id="notice_content">
			<input type="hidden" name="notice_num" value="${notice.notice_num}">
		</div>
		<div>
			<input type="submit" value="수정하기">
		</div>
	</form>
</body>
</html>