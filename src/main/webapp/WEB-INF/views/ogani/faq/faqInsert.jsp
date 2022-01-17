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
    
    <div class="container">
    	<div class="col-lg-12">
    		<div style="margin-top:50px; margin-bottom:30px;">
				<h3>F A Q</h3>
			</div>
    <div class="insert">
	<form action="faqInsert.do" id="faqInsert" name="faqInsert">
		Question: <input type="text" style="width: 350px" id="faq_question" name="faq_question"><br>
		Answer<br> <textarea name="faq_answer" id="faq_answer" rows="10" cols="130"></textarea> 
					<br>
		<br><input type="submit" class="site-btn" value="등록">
	</form>
</body>
</html>