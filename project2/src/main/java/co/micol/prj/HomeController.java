package co.micol.prj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.blog.service.BlogService;
import co.micol.prj.book.service.BookService;

@Controller
public class HomeController {
	
	
	  @Autowired
	  private BlogService blogDAO;
	 @Autowired
	 private BookService bookDao;
	
	@RequestMapping("/home.do")
	public String home(Model model) {
		
		//블로그 정보 불러오기
		model.addAttribute("searchBlog",blogDAO.searchList());
		
		//도서 정보 불러오기
		model.addAttribute("searchbook", bookDao.bookSelectList());
		
		/*
		 * model.addAttribute("searchOnebook", bookDao.bookSearchOne());
		 * 
		 * model.addAttribute("searchTwobook", bookDao.bookSearchTwo());
		 * 
		 * model.addAttribute("searchThreebook", bookDao.bookSearchThree());
		 */		
		return "ogani/home/home";
	}
	
}
