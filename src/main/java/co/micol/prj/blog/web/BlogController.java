package co.micol.prj.blog.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.micol.prj.blog.service.BlogService;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.utils.PagingVO;

@Controller
public class BlogController {
	@Autowired
	private MemberService memberDao;
	private BlogService blogDAO;
	
	@RequestMapping("/blog.do")
	public String blog_main() {
		return "ogani/blog/blog";
	}
	
	@RequestMapping("/blog_home.do")
	public String blog_home(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.equals(null)) {
			return "ogani/login/loginForm";
		} else {
			return "blog/blog/main";
		}
	}
	
	@RequestMapping("/reviewPaging.do")
	public String blog_review() {
		return "blog/blog/reviewPaging";
	}
	
	@RequestMapping("/wishBook.do")
	public String blog_wish() {
		return "blog/blog/wishBook";
	}
	
	@RequestMapping("/readingBook.do")
	public String blog_reading() {
		return "blog/blog/readingBook";
	}
	
	@RequestMapping("/readBook.do")
	public String blog_read() {
		return "blog/blog/readBook";
	}
	
	@RequestMapping("/readingStat.do")
	public String blog_stat() {
		return "blog/blog/readgingStat";
	}
	
	@RequestMapping("/following.do")
	public String blog_follow() {
		return "blog/blog/following";
	}
	
	
	//∆‰¿Ã¬° + ∏Æ∫‰ ¿¸√º ¡∂»∏
	@GetMapping("blogSelectList")
	public String blogSelectList(PagingVO blog, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = blogDAO.countReview();
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		
		blog = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", blog);
		model.addAttribute("viewAll", blogDAO.blogSelectList(blog));
		return "blog/reviewPaging";
	}
}
