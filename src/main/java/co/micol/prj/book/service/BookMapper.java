package co.micol.prj.book.service;

import java.util.List;

public interface BookMapper {

	List<BookVO> bookSelectList();

	String bookInsert(BookVO book);

	String bookDelete(BookVO book);

	String bookUpdate(BookVO book);
	
	String bookSearch(String book_isbn);
}
