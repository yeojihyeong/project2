package co.micol.prj.blog.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.micol.prj.blog.service.BlogMapper;
import co.micol.prj.blog.service.BlogService;
import co.micol.prj.blog.service.BlogVO;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.utils.PagingVO;

@Controller
public class BlogController {
	@Autowired
	private MemberService memberDao;
	
	@Autowired
	private BlogService blogDAO;
	
	@Autowired
	private BlogMapper mapper;
	
	//블로그 홈
	@RequestMapping("/blog_list.do")
	public String blog_main(Model model) {
		
		List<BlogVO> list = mapper.likedReview();
		model.addAttribute("list", list);
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
	
	//게시글 상세 조회
	@RequestMapping(value = "/reviewDetail", method=RequestMethod.GET)
	public String review_detail() {
		return "blog/blog/reviewDetail";
	}
	
	@GetMapping("/reviewDetailSelect.do")
	   public String reviewDetailSelect(@Param("blog_id") String blog_id, Model model) {
	      System.out.println(blog_id);
	      model.addAttribute("review", blogDAO.reviewDetailSelect(blog_id));
			return "blog/blog/reviewDetail";
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
}
