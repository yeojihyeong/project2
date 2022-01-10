package co.micol.prj.book.web;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	/*
	 * @RequestMapping("/bookInsert.do") public String
	 * bookInsert(@RequestParam("file") MultipartFile file, BookVO book, Model
	 * model) { System.out.println("bookInsert");
	 * System.out.println(book.getBook_isbn());
	 * 
	 * String originalFileName = file.getOriginalFilename();
	 * 
	 * if(!originalFileName.isEmpty()) { String uuid =
	 * UUID.randomUUID().toString();//�������ϸ��� ���� ������ ���̵� ���� String saveFileName =
	 * uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
	 * 
	 * try { file.transferTo(new File(saveDir,saveFileName)); //��������
	 * book.setBook_picture(originalFileName); book.setBook_pfile(originalFileName);
	 * } catch(Exception e) { e.printStackTrace(); } }
	 * 
	 * String n = bookDao.bookInsert(book); if ( n.equals(0)) {
	 * model.addAttribute("message","��������� ���еǾ����ϴ�."); } else {
	 * model.addAttribute("message","��������� �Ϸ�Ǿ����ϴ�."); }
	 * 
	 * return "admin/book/bookInsert"; }
	 */
	
}
