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
    
<div align="center">
	<h1>글쓰기</h1>
	<form action="boardInsert.do" method="post" enctype="multipart/form-data">
		<div >
			제목: <input type="text" id="board_title" name="board_title"><br>
			내용: <input type="text" id="board_content" name="board_content"><br> 
			사진: <input type="file" id="file" name="file">
		</div>
		<div>
			<input type="submit" value="글쓰기">
		</div>
	</form>
</div>
</body>
</html>