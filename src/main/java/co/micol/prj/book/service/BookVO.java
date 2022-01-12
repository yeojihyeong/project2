package co.micol.prj.book.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BookVO {
	private String book_isbn; //도서 ISBN P.K(일련번호)
	private String book_name; // 도서 이름
	private String book_content; //도서 내용
	private String book_write; // 글쓴이
	private int book_page; //총 페이지 수
	private String book_publis; //출판사
	private String book_picture; //이미지 이름
	private String book_pfile; //이미지 저장이름
	private double book_review; //도서평점
	private int book_cnt; //조회수
	private String book_cheonggu; //장르
	
}
