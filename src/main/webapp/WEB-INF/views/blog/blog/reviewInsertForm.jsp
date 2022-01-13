<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<h3>API 테스트</h3>
<input id="bookTitle">
<input id="bookAuthor">

<button id="searchBtn">검색</button>
<p></p>
<script type="text/javascript">
	var key = "1bb9f67168e685c06c2f289d814b676f6b7792fbbf48db9c5862c003bdd0779c";
	
	$("#searchBtn").click(function(){
		
		$.ajax({
			method:"GET",
			url: "http://seoji.nl.go.kr/landingPage/SearchApi.do?cert_key="+key+"&result_style=json&page_no=1&page_size=10",
			data: { title : $("#bookTitle").val(), author: $("#bookAuthor").val()},
			success : function(data){
				console.log(data);
				console.log(data.docs[0].title);
				
				alert("성공");
				
				
				/* $("p").append("<strong>"+data.docs[0].title+"</strong>");
				$("p").append("<img src='"+data.docs[0].title_url+ "'/>"); */
				
				/* $(data).find('item').each(function() {
					var title = $(this).find("title_info").text();
					var image = $(this).find("image_url").text();
					$("p").append("<strong>" + title + "</strong>");
					$("p").append("<img src='" + image + "'/>");					
				})*/
				
				
			},
			error : function(error){
				console.log(error);
				alert("실패");
			}
		})
	});
</script>
</body>
</html>