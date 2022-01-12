<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <img src="resources/ogani/img/board/${boardDetail.board_pfile }" width="" height="" alt="">
    <h2>${boardDetail.board_title }</h2>
    <h5>${boardDetail.board_content }</h5>
    <button type="submit" onclick="location.href='boardUpdatePage.do?board_num=${boardDetail.board_num }'">수정하기</button>
    <button type="submit" onclick="location.href='boardDelete.do?board_num=${boardDetail.board_num }'">삭제하기</button>
    
    <div class="comment-section">
				<div class="grids_of_2">
					<h2>Comments</h2>
					<div class="comm">
					<!-- <div class="grid1_of_2"> -->
						<div class="grid_img">
							<a href=""><img src="images/pic10.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">${bcommDetail.writer }</a></h4>
							<h3 class="style">${bcommDetail.wdate }</h3>
							<p class="para top">${bcommDetail.content }</p>
							<a href="" class="btn1">Click to Reply</a>
						</div>
						<div class="clear"></div>
					</div>
					
					
					<div class="comm-comm">
				<!-- 	<div class="grid1_of_2 left"> -->
						<div class="grid_img">
							<a href=""><img src="images/pic10.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">Designer First</a></h4>
							<h3 class="style">march 3, 2013 - 4.00 PM</h3>
							<p class="para top"> All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>
							<a href="" class="btn1">Click to Reply</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="grid1_of_2">
						<div class="grid_img">
							<a href=""><img src="images/pic12.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">Ro Kanth</a></h4>
							<h3 class="style">march 2, 2013 - 12.50 AM</h3>
							<p class="para top"> All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>
							<a href="" class="btn1">Click to Reply</a>
						</div>
						<div class="clear"></div>
					</div>								
						<div class="artical-commentbox">
						 	<h2>Leave a Comment</h2>
				  			<div class="table-form">
								<form action="#" method="post" name="post_comment">
									<div>
										<label>Name<span>*</span></label>
										<input type="text" value=" ">
									</div>
									<div>
										<label>Email<span>*</span></label>
										<input type="text" value=" ">
									</div>
									<div>
										<label>Your Comment<span>*</span></label>
										<textarea> </textarea>	
									</div>
								</form>
								<input type="submit" value="submit">
									
							</div>
							<div class="clear"> </div>
				  		</div>			
					</div>
			</div>
</body>
</html>