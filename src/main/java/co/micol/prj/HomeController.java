package co.micol.prj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.blog.service.BlogService;
import co.micol.prj.book.service.BookService;
import co.micol.prj.genre.service.GenreService;

@Controller
public class HomeController {
	
	
	  @Autowired
	  private BlogService blogDAO;
	 @Autowired
	 private BookService bookDao;
	@Autowired
	private GenreService genreDao;
	 

	
	@RequestMapping("/home.do")
	public String home(Model model) {
		
		
		//블로그 정보 불러오기
		model.addAttribute("searchBlog",blogDAO.searchList());
		
		//도서 정보 불러오기
		model.addAttribute("searchbook", bookDao.bookSelectList());
		
		model.addAttribute("searchSelectOne", bookDao.bookSearchOne());
		
		model.addAttribute("searchSelectTwo", bookDao.bookSearchTwo());
		
		model.addAttribute("searchSelectThree", bookDao.bookSearchThree());
		
		model.addAttribute("genre", genreDao.genreSelectList());
				
		model.addAttribute("searchBlogThree", blogDAO.searchListThree());
		
		model.addAttribute("booksearch",bookDao.bookSelectListOne());
		
		model.addAttribute("bookOne",bookDao.bookOne());
		
		model.addAttribute("bookTwo",bookDao.bookTwo());
		
		model.addAttribute("bookThree",bookDao.bookThree());
		 
		return "ogani/home/home";
	}
	
}
