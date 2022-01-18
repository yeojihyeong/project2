package co.micol.prj.wish.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.micol.prj.book.service.BookVO;
import co.micol.prj.wish.service.ViewWishVO;
import co.micol.prj.wish.service.WishMapper;
import co.micol.prj.wish.service.WishService;
import co.micol.prj.wish.service.WishVO;

@Controller
public class WishController {
	@Autowired
	private WishService wishDAO;
	
	//위시리스트 추가
	@PostMapping("/ajaxaddWishBook.do")
	@ResponseBody
	public String ajaxAddWishBook(@Param("book_isbn") String book_isbn, HttpSession session) {
		String id = (String) session.getAttribute("member_id");
		WishVO wish = new WishVO();
		wish.setMember_id(id);
		wish.setBook_isbn(book_isbn);
		wishDAO.insertWishBook(wish);
		return "ogani/search/bookDetail";
	}
	
	//위시 삭제
	@RequestMapping("/deleteWish.do")
	public String deleteWish(@Param("wish_id") String wish_id, Model model) {
		System.out.println(wish_id);
		
		model.addAttribute("wish", wishDAO.wishDelete(wish_id));
		
		return "blog/blog/wishBook";
	}
	
	//위시 등록
	@RequestMapping("/InsertWish.do")
	public String InsertWish(WishVO wish, BookVO book, HttpSession session) {
		
		wish.setMember_id((String) session.getAttribute("member_id"));
		wish.setBook_isbn(book.getBook_isbn());
		
		return "ogani/search/InsertWishSuccess";
	}
}
