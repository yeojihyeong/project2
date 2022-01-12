<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link ref="stylesheet" href="resources/ogani/css/faq/faq-main.css"
	type="text/css">

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
	<h3>자주하는 질문</h3>
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<table class="table" cellspacing="0">
						
							<tbody>
									<c:forEach items="${faqs }" var="faq">
										<tr>
											<td>Question</td>
											<td>${faq.faq_question }</td>
										</tr>
										<tr>
											<td>Answer</td>
											<td>${faq.faq_answer }</td>
										</tr>
										<tr>
											<td><button type="submit" onclick="location.href='faqDelete.do?faq_id=${faq.faq_id}'">삭제</button></td>
										</tr>
									</c:forEach>
							</tbody>
						</table>
					</div>
					<button type="button" onclick="location.href='faqInsertPage.do'">글쓰기</button>
				</div>
			</div>
		</div>
	</section>
</body>
</html>