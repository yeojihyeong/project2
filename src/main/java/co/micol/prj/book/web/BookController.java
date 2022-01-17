package co.micol.prj.book.web;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.micol.prj.blog.service.BlogService;
import co.micol.prj.book.service.BookService;
import co.micol.prj.book.service.BookVO;
import co.micol.prj.utils.PagingVO;

@Controller
public class BookController {

	@Autowired
	private BookService bookDao;
	
	@Autowired
	private BlogService blogDAO;
	
	@Autowired
	ServletContext sc;
	
	private String saveDir;

	@RequestMapping("/bookDetail.do")
	public String bookDetail(@Param("book_isbn") String book_isbn, Model model) {
		
		model.addAttribute("book", bookDao.bookSearch(book_isbn));
		return "ogani/search/bookDetail";
	}
	
	@RequestMapping("/mainBookSearchList.do")
	public String mainBookSearchList(@RequestParam("type") String type, @RequestParam("keyword") String keyword, Model model) {

	BookVO book = new BookVO();
	book.setType(type);
	book.setKeyword(keyword);
	
	model.addAttribute("list", bookDao.bookSearchList(book));
		
		return "ogani/search/bookSearchList";
	}
	
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
	
	
	@PostMapping("/bookSearchInsert.do")
	@ResponseBody
	public String ajaxBookInsert(HttpServletRequest request) {
		String[] ajaxData = request.getParameterValues("bookData");
		
		BookVO book = new BookVO();
		book.setBook_name(ajaxData[0]);
		book.setBook_picture(ajaxData[1]);
		book.setBook_write(ajaxData[2]);
		book.setBook_publis(ajaxData[3]);
		book.setBook_isbn(ajaxData[4]);
		book.setBook_cheonggu(ajaxData[5]);
		book.setBook_content(ajaxData[6]);
		
		bookDao.bookInsert(book); 
		
		return "blog/blog/reviewForm";
	}
	
	@PostMapping("/ajaxbookSearch.do")
	@ResponseBody
	public boolean ajaxbookSearch(@Param("book_isbn") String book_isbn, Model model) {
		return bookDao.isBookCheck(book_isbn);
	}
	
	
	
	@RequestMapping("/bookInsert.do")
	public String bookInsert(@RequestParam("file") MultipartFile file, BookVO book, Model model) {
		System.out.println(book.getBook_isbn());
		String originalFileName = file.getOriginalFilename();
				
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();//�������ϸ��� ���� ������ ���̵� ����
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			
		try {
			file.transferTo(new File(saveDir,saveFileName)); //��������
			book.setBook_picture(originalFileName);
			book.setBook_pfile(originalFileName);
		} catch(Exception e) {
			e.printStackTrace();
			}
		}
		
		
		
		 int n= bookDao.bookInsert(book);
		 if(n != 0 ) {
			 model.addAttribute("message","성공인가");
		 } else {
			 model.addAttribute("message","실패인가");
		 
		 }
		 model.addAttribute("books",bookDao.bookSelectList());
		return "admin/book/bookSelectList";
	}
	
}
