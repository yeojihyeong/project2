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
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.utils.PagingVO;

@Controller
public class BlogController {
	@Autowired
	private MemberService memberDao;
	
	@Autowired
	private BlogService blogDAO;
	
	@RequestMapping("/blog.do")
	public String blog_main() {
		return "ogani/blog/blog";
	}
	
	@RequestMapping("/blog_home.do")
	public String blog_home(PagingVO paging, Model model, @RequestParam(defaultValue="1", required=false)String nowPage, @RequestParam(defaultValue="4", required=false)String cntPerPage, HttpServletRequest request, @RequestParam(required=false) String member_id) {
		HttpSession session = request.getSession();
		
		member_id = (String) session.getAttribute("member_id");
	

		int total = blogDAO.countReview(member_id);
		
		paging = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		System.out.println("start_no : " + paging.getStart_no());
		System.out.println("end_no : " + paging.getEnd_no());
		
		
		
		model.addAttribute("member2", memberDao.memberOne(member_id));
		
		model.addAttribute("paging", paging);
		int end_no = paging.getEnd_no();
		int start_no = paging.getStart_no();
		
		model.addAttribute("viewAll", blogDAO.blogSelectList(start_no, end_no, member_id));
		
		return "blog/blog/main";
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
	
	
	
	/*
	 * @GetMapping("blogSelectList") public String blogSelectList(PagingVO blog,
	 * Model model , @RequestParam(value="nowPage", required=false)String nowPage
	 * , @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
	 * 
	 * int total = blogDAO.countReview(id);
	 * 
	 * if(nowPage == null && cntPerPage == null) { nowPage = "1"; cntPerPage = "5";
	 * } else if (nowPage == null) { nowPage = "1"; } else if (cntPerPage == null) {
	 * cntPerPage = "5"; }
	 * 
	 * blog = new PagingVO(total, Integer.parseInt(nowPage),
	 * Integer.parseInt(cntPerPage)); model.addAttribute("paging", blog);
	 * model.addAttribute("viewAll", blogDAO.blogSelectList(blog)); return
	 * "blog/reviewPaging"; }
	 */
}
