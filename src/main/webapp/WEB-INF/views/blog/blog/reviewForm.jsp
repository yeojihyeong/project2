<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/ogani/js/jquery-3.6.0.min.js"></script>
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
		<form>
			<p><textarea id="ta_title" placeholder="제목"></textarea></p>
			<hr>
			<p><textarea id="ta_content" placeholder="내용을 입력하세요"></textarea></p>
			<p><input id="book_img"></p>
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
					<input id="booktitle">
					<input id="bookauthor">
					<button id="searchBtn" type="button">검색</button>
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
			console.log(td.eq(1).text());
			console.log(td.eq(2).text());
			col1 = td.eq(1).text();
			col2 = td.eq(2).text();
			
			/* console.log("확인2");
			if($('#book_select').is(":checked") == true) {
				var book_select = $('#book_select');
				console.log(book_select.parent().parent());
				var tr = book_select.parent().parent();
				console.log(tr.children());
				var td = tr.children();
				console.log(td[0].eq(1).val());
				var title = td.eq(1).children().val();
			} */
		});  
	});

	
	function delCheck(e) {
	    var check = document.querySelectorAll('.check');
	    for (var i = 0; i < check.length; i++) {
	        console.log(check[i].checked);
	        if (check[i].checked == true) {
	            check[i].parentNode.parentNode.remove();
	        }
	    }
	}
	/* 모달창 띄우기 */
	$('#book_search_btn').click(function(e){
		e.preventDefault();
		$('#book_modal').modal("show");
	});

	
	/* API 받아오기 */
	var key = "1bb9f67168e685c06c2f289d814b676f6b7792fbbf48db9c5862c003bdd0779c";
	
	$("#searchBtn").click(function(){
		
		$.ajax({
			method:"GET",
			url: "http://seoji.nl.go.kr/landingPage/SearchApi.do?cert_key="+key+"&result_style=json&page_no=1&page_size=100",
			data: { title : $("#booktitle").val(), author: $("#bookauthor").val()},
			success : function(data){
				console.log(data);
				/* console.log(data.docs[0].TITLE); */
				
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
					$('<th>').text('주제'),
					$('<th>').text('내용').attr('style', "display:none;")
				);
				thead.append(tr);
				var tbody = $('<tbody>');
				
				for(var i = 0; i < data.docs.length; i++){
					if(data.docs[i].TITLE_URL !== "" && data.docs[i].TITLE_URL !== "" && data.docs[i].AUTHOR !== "" && data.docs[i].EA_ISBN !== ""){
						
						var tr = $('<tr>');
						tr.append(
							$('<td>').append($('<input>').attr({
								'type' : 'checkbox',
								'id' : 'book_select'
							})),
							
							$('<td>').text(data.docs[i].TITLE),
							$('<td>').append('<img src="'+ data.docs[i].TITLE_URL +'" />'),
							$('<td>').text(data.docs[i].AUTHOR),
							$('<td>').text(data.docs[i].PUBLISHER),
							$('<td>').text(data.docs[i].EA_ISBN),
							$('<td>').text(data.docs[i].SUBJECT),
							$('<td>').text(data.docs[i].BOOK_SUMMARY_URL).attr('style', "display:none;")
						);
						tbody.append(tr);
					}
				}
					
				table.append(thead, tbody);
				$('#list_show').append(table);
				
				/* var form = $('<form>').attr({
					'action': 'bookInsert.do',
					'method': 'post'
				});
				
				
				
				form.append(
					$('<input>').attr({
						'type':'hidden',
						'id':'book_isbn',
						'name':'book_isbn',
						'value':data.docs[i].EA_ISBN
					}),
					
					$('<button>').attr({
						'type':'submit'
					})
				);
				 */

				/* var table = $('<table>').attr({
					'id':'booklist'
				}).addClass('tbl');
				
				var thead = $('<thead>');
				var tr = $('<tr>');
				tr.append(
					$('<input>').attr({
						'type' : 'checkbox'
					}),
					$('<th>').text('책제목'),
					$('<th>').text('표지')
				);
				thead.append(tr);
				
				var tbody = $('<tbody>');
				$.each(data, function(index, item){
					if(item.docs[index].TITLE !== "" && item.docus[index].TITLE_URL !== ""){
					
					var tr = $('<tr>');
					tr.append(
						$('<td>').text(TITLE),
						$('<td>').text(TITLE_URL)
					);
					
					tbody.append(tr);
					}
				});
				
				table.append(thead, tbody);
				$('#list_show').append(table); */
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