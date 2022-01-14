package co.micol.prj.book.web;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.micol.prj.book.service.BookService;
import co.micol.prj.book.service.BookVO;

@Controller
public class BookController {

	@Autowired
	private BookService bookDao;
	
	
	
	@Autowired
	ServletContext sc;
	
	private String saveDir;
	
	
	@RequestMapping("bookUpdateForm.do")
	public String bookUpdateForm(@Param("book_isbn") String book_isbn, Model model ){
		model.addAttribute("book", bookDao.bookSearch(book_isbn));
		return "admin/book/bookUpdateForm";
	}
	
	
	@RequestMapping("/bookSearch.do")
	public String bookSearch(@Param("book_isbn") String book_isbn, Model model) {
		model.addAttribute("book", bookDao.bookSearch(book_isbn));
		return "admin/book/bookSearch";
	}
	
	
	@PostMapping("/bookUpdate.do")
	
	public String bookUpdate(@Param("book_isbn") String book_isbn, @RequestParam("file") MultipartFile file, BookVO book, Model model) {
		String originalFileName = file.getOriginalFilename();
		
		String webPath = "/resources/upload";
		String realPath = sc.getRealPath(webPath);
		System.out.printf("realPath: %s\n", realPath);
		
		File savePath = new File(realPath);
		if(!savePath.exists())
			savePath.mkdirs();
		
		realPath += File.separator + originalFileName;
		File saveFile = new File(realPath);
		
		
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			
			try {
				file.transferTo(saveFile);
				book.setBook_picture(originalFileName);
				book.setBook_pfile(saveFileName);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		model.addAttribute(bookDao.bookUpdate(book));
		System.out.println(book_isbn);
		model.addAttribute("book", bookDao.bookSearch(book_isbn));
		return "admin/book/bookSearch";
	}
	
	
	@PostMapping("/bookDelete.do")
	public String bookDelete(@Param("book_isbn") String book_isbn,  Model model) {
		System.out.println(book_isbn);
		model.addAttribute("book", bookDao.bookDelete(book_isbn));
		
		
		
		model.addAttribute("books",bookDao.bookSelectList());
		
		return "admin/book/bookSelectList";
	}
	
	@RequestMapping("/bookSelectList.do")
	public String bookSelectList(Model model) {
		model.addAttribute("books", bookDao.bookSelectList());
		return "admin/book/bookSelectList";
	}
	
	
	@RequestMapping("/bookInsertForm.do")
	public String bookInsertForm() {
		return "admin/book/bookInsertForm";
	}
	
	
	
	
	
	
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
		
		
		
		 int n= bookDao.bookInsert(book);
		 if(n != 0 ) {
			 model.addAttribute("message","도서등록 실패해였습니다");
		 } else {
			 model.addAttribute("message","도서등록 성공되었습니다.");
		 
		 }
		 model.addAttribute("books",bookDao.bookSelectList());
		return "admin/book/bookSelectList";
	}
	
}
