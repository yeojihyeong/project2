<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/blog/css/fontawesome-stars.css">
<script type="text/javascript" src="resources/blog/js/jquery.barrating.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	$('input[type="checkbox"][id="book_select"]').click(function(){
		if($(this).prop('checked')){
			$('input[type="checkbox"][id="book_select"]').prop('checked', false);
			$(this).prop('checked', true);
		}
	});
	
	$('#example').barrating({
		theme:'fontawesome-stars'
		, onSelect: function(value, text, event){
			if(typeof(event) !== 'undifined'){
				$('#star_value').attr('value', value);
			}
		}
	});
});
</script>
</head>
<style>
table{
	text-align:center;
	border: 1px solid gainsboro;
	border-collapse: collapse;
}

tr, td{
	border: 1px solid gainsboro;
	padding: 5px;
}

img{
	width: 100px;
	height: 150px
}

textarea:focus{
	outline: none;
}

#ta_title{
	font-size: xx-large;
	width: 100%;
	height: 55px;
	border: none;
	resize: none;
}

#ta_content{
	width: 100%;
	height: 500px;
	border: none;
	resize: nono;
}

</style>
<body>
<div class="col-lg-8">
		<form class="review" action="reviewInsert.do" method="post">
			<p><textarea id="ta_title" name="review_title"placeholder="제목"></textarea>
			<hr>
			<p><textarea id="ta_content" name="review_content" placeholder="내용을 입력하세요"></textarea>
			<p><input id="book__title" disabled></p>
			
			<select id="example">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
			<p><input id="star_value" name="review_rating" type="hidden"></p>
			<p><input id="book__isbn" name="book_isbn" type="hidden"></p>
			<p><button type="button" class="btn btn-secondary" id="book_search_btn">책 검색하기</button>
			<button type="submit" class="btn btn-dark">작성</button></p>
		</form>
	</div>

	
	<div class="modal fade" id="book_modal" tabindex="-1" role="dialog" aria-labelledby="mymodalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">책 검색하기</h3>
				</div>	
				<div class="modal-body">
					<input id="query">
					
					<button id="searchBtn" type="button" class="btn btn-dark">검색</button>
					<div id="list_show"></div>	
					
				</div>
					
				<div class="modal-footer">
					<button id="book_insert" type="button" class="btn btn-dark">등록</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			</div>	
		</div>
	</div>

<script type="text/javascript">

	$('#book_insert').click(function(e){
		console.log("확인1");
		
		var book_select = $("input[id=book_select]:checked");
		
		var col1 = "";
		var col2 = "";
		var col3 = "";
		var col4 = "";
		var col5 = "";
		var col6 = "";
		var col7 = "";
		var col8 = "";
		
		
		book_select.each(function(i) {
			console.log(book_select.parent().parent().eq(i));
			var tr = book_select.parent().parent().eq(i);
			console.log(tr.children());
			var td = tr.children();
			console.log("title="+td.eq(1).text());
			col1 = td.eq(1).text();
			col8 = td.eq(8).text();
			var src = $('#book_image').attr("src");
			console.log("src="+src);
			col2 = src;
			console.log("author="+td.eq(3).text());
			col3 = td.eq(3).text();
			console.log("publisher="+td.eq(4).text());
			col4 = td.eq(4).text();
			console.log("isbn="+td.eq(5).text());
			col5 = td.eq(5).text();
			console.log("subject="+td.eq(6).text());
			col6 = td.eq(6).text();
			console.log("content="+td.eq(7).text());
			col7 = td.eq(7).text();
			
		});
		
		var bookData = [col1, col2, col3, col4, col5, col6, col7];
		console.log(bookData);
		
		
		
		$.ajax({
			url: "bookSearchInsert.do",
			type: "POST",
			traditional:true,
			data:{
				bookData: bookData
			},
			
			success:function(data){
				alert("등록되었습니다.");
				$('input[id=book__title]').attr('value', col1);
				$('input[id=book__isbn]').attr('value', col5);
				
			},
			error:function(error){
				console.log(error);
				alert("실패");
			}
		})
		
	});

	
	
	/* 모달창 띄우기 */
	$('#book_search_btn').click(function(e){
		e.preventDefault();
		$('#book_modal').modal("show");
	});

	
	/* API 받아오기 */
	var key = "B74329D6C33E8EECAE1CA1C54895210EAA9A446F2EA95B43B80AA0C4C02931EE";
	var json = "json";
	$("#searchBtn").click(function(){
		
		var tableExist = $('#book_list');
		if(tableExist){
			tableExist.remove();
		}
		
		$.ajax({
			method:"GET",
			url: "https://cors-anywhere.herokuapp.com/http://book.interpark.com/api/search.api?key="+key,
			data: { query : $("#query").val()},
			success : function(data){
				console.log(data);
				
				
				alert("성공");
				
				var list = $('#list_show');
				
				var table = $('<table>').attr({
					'id' : 'book_list'
				});
				var thead = $('<thead>');
				var tr = $('<tr>');
				
				tr.append(
					$('<th>').text('선택'),
					$('<th>').text('책제목'),
					$('<th>').text('표지'),
					$('<th>').text('저자'),
					$('<th>').text('출판사'),
					$('<th>').text('ISBN'),
					$('<th>').text('카테고리'),
					$('<th>').text('내용').attr('style', "display:none;"),
				);
				thead.append(tr);
				var tbody = $('<tbody>');
				
				$(data).find('item').each(function(){
					
					var tr = $('<tr>');
					var title = $(this).find("title").text();
					var coverLargeUrl = $(this).find("coverLargeUrl").text();
					var author = $(this).find("author").text();
					var publisher = $(this).find("publisher").text();
					var isbn = $(this).find("isbn").text();
					var categoryId = $(this).find("categoryId").text();
					var description = $(this).find("description").text();
					
					tr.append(
						$('<td>').append($('<input>').attr({
							'type' : 'checkbox',
							'id' : 'book_select'
						})),
						$('<td>').text(title),
						$('<td>').append($('<img>').attr({
							'src' : coverLargeUrl,
							'id' : 'book_image'
							
						})),						
						$('<td>').text(author),
						$('<td>').text(publisher),
						$('<td>').text(isbn),
						$('<td>').text(categoryId),
						$('<td>').text(description).attr('style', "display:none;"),
						
					);
					tbody.append(tr);
				})
					
				table.append(thead, tbody);
				$('#list_show').append(table);
				
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