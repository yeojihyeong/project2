package co.micol.prj.blog.web;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.micol.prj.blog.service.BlogMapper;
import co.micol.prj.blog.service.BlogService;
import co.micol.prj.blog.service.BlogVO;
import co.micol.prj.book.service.BookService;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.utils.PagingVO;
import co.micol.prj.wish.service.WishMapper;
import co.micol.prj.wish.service.WishService;

@Controller
public class BlogController {
	@Autowired
	private MemberService memberDao;

	@Autowired
	private BlogService blogDAO;

	@Autowired
	private BookService bookDao;

	@Autowired
	private WishService wishDAO;

	@Autowired
	private BlogMapper mapper;

	@RequestMapping("/wishBook.do")
	public String blog_wish(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("member_id");
		System.out.println(id);
		model.addAttribute("wish", wishDAO.wishSelectList(id));
		System.out.println(model);
		return "blog/blog/wishBook";
	}

	// 블로그 홈
	@RequestMapping("/blog_list.do")
	public String blog_main(Model model) {

		List<BlogVO> list = mapper.likedReview();
		model.addAttribute("list", list);
		return "ogani/blog/blog";
	}

	// 최근 리뷰
	@RequestMapping("/blog_recent.do")
	public String blog_recent(Model model) {
		List<BlogVO> list = mapper.recentReview();
		model.addAttribute("list", list);
		return "ogani/blog/blogRecent";
	}

	@RequestMapping("/blog_home.do")
	public String blog_home(PagingVO paging, Model model,
			@RequestParam(defaultValue = "1", required = false) String nowPage,
			@RequestParam(defaultValue = "4", required = false) String cntPerPage, HttpServletRequest request,
			@RequestParam(required = false) String member_id) {
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

	// 게시글 상세 조회 + 조회수 증가
	@GetMapping(value="/reviewDetailSelect.do")
	public ModelAndView detail(@RequestParam("blog_id") String blog_id, Model model) {
		System.out.println(blog_id);
		
		blogDAO.updateReviewCnt(blog_id);
		
		return new ModelAndView("blog/blog/reviewDetail", "review", blogDAO.reviewDetailSelect(blog_id));
	}

	// 검색 - 블로그 홈에서
	@RequestMapping("/reviewSearch.do")
	public String reviewSearch(@Param("searchValue") String searchValue, Model model) {
		List<BlogVO> search = mapper.reviewSearch(searchValue);
		model.addAttribute("search", search);
		System.out.println(search);
		return "blog/blog/reviewSearch";
	}
	
	// 검색 - 개별 블로그에서
	
	
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
	
	@RequestMapping("/reviewForm.do")
	public String reviewInsertForm() {
		return "blog/blog/reviewForm";
	}
	
	@PostMapping("/reviewInsert.do")
	public String reviewInsert(BlogVO blog, HttpSession session) {
		
		String id = (String) session.getAttribute("member_id");
		blog.setMember_id(id);
		blogDAO.blogInsert(blog);
		
		return "redirect:blog_home.do";
	}
}
