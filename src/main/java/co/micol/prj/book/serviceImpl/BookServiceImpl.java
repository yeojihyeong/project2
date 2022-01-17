package co.micol.prj.book.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.book.service.BookMapper;
import co.micol.prj.book.service.BookService;
import co.micol.prj.book.service.BookVO;

@Repository("bookDao")
public class BookServiceImpl implements BookService{

	@Autowired
	private BookMapper map;

	@Override
	public List<BookVO> bookSelectList() {
		return map.bookSelectList();
	}

	@Override
	public int bookInsert(BookVO book) {
		return map.bookInsert(book);
	}

	@Override
	public int bookDelete(String book_isbn) {
		return map.bookDelete(book_isbn);
	}

	@Override
	public int bookUpdate(BookVO book) {
		return map.bookUpdate(book);
	}

	@Override
	public BookVO bookSearch(String book_isbn) {
		return map.bookSearch(book_isbn);
	}


	@Override
	public List<BookVO> bookSearchList(BookVO book) {
		return map.bookSearchList(book);
	}

	@Override
	public BookVO bookSearchOne(BookVO book) {
		return map.bookSearchOne(book);
	}

	@Override
	public BookVO bookSearchTwo(BookVO book) {
		return map.bookSearchTwo(book);
	}

	@Override
	public BookVO bookSearchThree(BookVO book) {
		return map.bookSearchThree(book);

	public boolean isBookCheck(String book_isbn) {
		return map.isBookCheck(book_isbn);

	}
	

}
