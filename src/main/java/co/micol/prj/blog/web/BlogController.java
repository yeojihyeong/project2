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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.micol.prj.blog.service.BlogMapper;
import co.micol.prj.blog.service.BlogService;
import co.micol.prj.blog.service.BlogVO;
import co.micol.prj.book.service.BookService;
import co.micol.prj.doneread.service.DonereadService;
import co.micol.prj.following.service.FollowingMapper;
import co.micol.prj.following.service.FollowingService;
import co.micol.prj.following.service.FollowingVO;
import co.micol.prj.following.service.ViewFollowVO;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.onread.service.OnreadService;
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
	private OnreadService readingDAO;

	@Autowired
	private DonereadService donereadDAO;

	@Autowired
	private BlogMapper mapper;
	
	@Autowired
	private FollowingService followDAO;

	//@Autowired
	//private FollowingMapper map;

	// 블로그 홈
	@RequestMapping("/blog_list.do")
	public String blog_main(Model model) {

		List<BlogVO> list = mapper.likedReview();
		
		model.addAttribute("list", list);
		model.addAttribute("book",bookDao.bookSelectList());
		
		return "ogani/blog/blog";
	}
	
	
	// 최근 리뷰
	@RequestMapping("/blog_recent.do")
	public String blog_recent(Model model) {
		List<BlogVO> recent = mapper.recentReview();
		model.addAttribute("recent", recent);
		model.addAttribute("book",bookDao.bookSelectList());
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
	@GetMapping(value = "/reviewDetailSelect.do")
	public ModelAndView detail(@RequestParam("blog_id") String blog_id, Model model) {
		System.out.println(blog_id);
		
		String owner = blogDAO.getBlogOwner(blog_id);
		String ownerName = memberDao.getBlogOwnerName(owner);
		
		System.out.println("블로그주인"+ownerName);
		
		blogDAO.updateReviewCnt(blog_id);
		
		model.addAttribute("ownerName", memberDao.getBlogOwnerName(owner));

		return new ModelAndView("blog/blog/reviewDetail", "review", blogDAO.reviewDetailSelect(blog_id));
	}

	// 검색 - 블로그 홈에서
	@RequestMapping("/reviewSearch.do")
	public String reviewSearch(@RequestParam("searchValue") String searchValue, Model model) {
		
		BlogVO blog = new BlogVO();
		blog.setSearchValue(searchValue);
		System.out.println("검색값"+searchValue);
		List<BlogVO> search = mapper.reviewSearch(blog);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("search", search);
		model.addAttribute("book",bookDao.bookSelectList());
		System.out.println(search);
		return "ogani/blog/reviewSearch";
	}

	@RequestMapping("/wishBook.do")
	public String blog_wish(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("member_id");

		model.addAttribute("wish", wishDAO.wishSelectList(id));
		return "blog/blog/wishBook";
	}

	@RequestMapping("/readingBook.do")
	public String blog_reading(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("member_id");

		model.addAttribute("reading", readingDAO.onreadSelectList(id));
		return "blog/blog/readingBook";
	}

	@RequestMapping("/readBook.do")
	public String blog_read(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("member_id");

		model.addAttribute("read", donereadDAO.donereadSelectList(id));

		return "blog/blog/readBook";
	}

	@RequestMapping("/following.do")
	public String followSelect(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("member_id");

		System.out.println(id);

		/* List<ViewFollowVO> follower = followDAO.followeeSelect(); */
		model.addAttribute("followee", followDAO.followeeSelect(id));
		model.addAttribute("follower", followDAO.followerSelect(id));
		
		return "blog/blog/following";
	}
	
	@PostMapping("/ajaxinsertFollow.do")
	@ResponseBody
	public void ajaxinsertFollow(String blog_id, HttpSession session, Model model) {
		String id = (String) session.getAttribute("member_id");
		String owner = blogDAO.getBlogOwner(blog_id);
		FollowingVO follow = new FollowingVO();
		
		follow.setFollower(id);
		follow.setFollowee(owner);
		System.out.println("owner : " + owner);
		
		followDAO.insertFollow(follow);
		
		model.addAttribute("owner", owner);
	}
	
	@PostMapping("/ajaxdeleteFollow.do")
	@ResponseBody
	public void ajaxdeleteFollow(String blog_id, HttpSession session) {
		String id = (String) session.getAttribute("member_id");
		String owner = blogDAO.getBlogOwner(blog_id);
		FollowingVO follow = new FollowingVO();
		
		follow.setFollower(id);
		follow.setFollowee(owner);
		System.out.println("unfollow owner : " + owner);
		
		String follow_id = followDAO.followIdSearch(follow);
		
		System.out.println("팔로우아이디 : " + follow_id);
		followDAO.deleteFollow(follow_id);
	}
	
	@PostMapping("/ajaxIsFollowCheck.do")
	@ResponseBody
	public boolean ajaxIsFollowCheck(@Param("blog_id") String blog_id, HttpSession session) {
		FollowingVO follow = new FollowingVO();
		
		String id = (String) session.getAttribute("member_id");
		follow.setFollower(id);
		String followee = blogDAO.getBlogOwner(blog_id);
		follow.setFollowee(followee);
		
		return followDAO.isFollowCheck(follow);
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
