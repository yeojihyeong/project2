package co.micol.prj.book.service;

import java.util.List;

public interface BookMapper {

	List<BookVO> bookSelectList();

	int bookInsert(BookVO book);

	int bookDelete(String book_isbn);

	int bookUpdate(BookVO book);
	
	BookVO bookSearch(String book_isbn);
	
	List<BookVO> bookSearchList(BookVO book);
	

	//가장많은 도서 장르 
	List<BookVO> bookSearchOne();

	//두번째 많은 도서 장르
	List<BookVO> bookSearchTwo();
	
	//세번째로 많은 도서 장르
	List<BookVO> bookSearchThree();


	boolean isBookCheck(String book_isbn);
	
	List<BookVO> bookSelectListOne();

}
