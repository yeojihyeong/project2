package co.micol.prj.blog.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.micol.prj.blog.service.BlogService;
import co.micol.prj.utils.PagingVO;

@Controller
public class BlogController {
	@Autowired
	private BlogService blogDAO;
	
	@RequestMapping("/blog_main.do")
	public String blog_main() {
		return "ogani/blog/blog_main";
	}
	
	//∆‰¿Ã¬° + ∏Æ∫‰ ¿¸√º ¡∂»∏
	/*@GetMapping("blogSelectList")
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
	}*/

}
