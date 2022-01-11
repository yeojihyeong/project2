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
	public String bookInsert(BookVO book) {
		return map.bookInsert(book);
	}

	@Override
	public String bookDelete(BookVO book) {
		return map.bookDelete(book);
	}

	@Override
	public String bookUpdate(BookVO book) {
		return map.bookUpdate(book);
	}

	@Override
	public String bookSearch(String book_isbn) {
		return map.bookSearch(book_isbn);
	}
	
	

}
