package co.micol.prj.book.web;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.micol.prj.book.service.BookService;
import co.micol.prj.book.service.BookVO;

@Controller
public class BookController {

	@Autowired
	private BookService bookDao;
	
	
	private String saveDir;
	
	@RequestMapping("/bookSelectList.do")
	public String bookSelectList(Model model) {
		model.addAttribute("books", bookDao.bookSelectList());
		return "admin/book/bookSelectList";
	}
	
	
	@RequestMapping("/bookInsertForm.do")
	public String bookInsertForm() {
		return "admin/book/bookInsertForm";
	}
	
	
	@GetMapping("/bookSearch.do")
	public String bookSearch(@RequestParam("book_isbn") String book_isbn, Model model) {
		System.out.println(book_isbn);
		model.addAttribute("book", bookDao.bookSearch(book_isbn));
		return "admin/book/bookSearch";
	}
	
	
	/*
	 * @GetMapping("/bookSearch.do") public String bookSearch(@PathVariable String
	 * book_isbn, Model model) { model.addAttribute("book",
	 * bookDao.bookSearch(book_isbn)); return "admin/book/bookSearch"; }
	 */
	
	@RequestMapping("/bookInsert.do")
	public String bookInsert(@RequestParam("file") MultipartFile file, BookVO book, Model model) {
		System.out.println(book.getBook_isbn());
		String originalFileName = file.getOriginalFilename();
				
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();//물리파일명을 위한 교유한 아이디 생성
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			
		try {
			file.transferTo(new File(saveDir,saveFileName)); //파일저장
			book.setBook_picture(originalFileName);
			book.setBook_pfile(originalFileName);
		} catch(Exception e) {
			e.printStackTrace();
			}
		}
		
		
		 String n= bookDao.bookInsert(book);
		 if(n.equals("0") ) {
			 model.addAttribute("message","도서등록 실패해였습니다");
		 } else {
			 model.addAttribute("message","도서등록 성공되었습니다.");
		 
		 }
		return "admin/book/bookSelectList";
	}
	
}
