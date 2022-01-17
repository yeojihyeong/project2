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
		
		model.addAttribute("searchBlog",blogDAO.searchList());
		model.addAttribute("searchbook", bookDao.bookSelectList());
		
		return "ogani/home/home";
	}
	
}
