package co.micol.prj.book.service;

import java.util.List;

public interface BookMapper {

	List<BookVO> bookSelectList();

	int bookInsert(BookVO book);

	int bookDelete(String book_isbn);

	int bookUpdate(BookVO book);
	
	BookVO bookSearch(String book_isbn);
	
	List<BookVO> bookSearchList(BookVO book);
	
}
