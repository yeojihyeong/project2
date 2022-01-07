package co.micol.prj.member.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberDao;
	
	@RequestMapping("/loginForm.do")
	private String loginForm() {
		return "ogani/login/loginForm";
	}
	
	@PostMapping("/login.do")
	public String login(MemberVO member, HttpSession session) {
		member = memberDao.memberSelect(member);
		if(member != null) {
			session.setAttribute("member_id", member.getMember_id());
			session.setAttribute("member_author", member.getMember_author());
			session.setAttribute("member_name", member.getMember_name());
		}else {
			return "ogani/login/loginForm";
		}
		return "redirect:home.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.do";
	}
	
	@PostMapping("/ajaxIsIdCheck.do")
	@ResponseBody
	public boolean ajaxIsIdCheck(String member_id) {
		return memberDao.isIdCheck(member_id);
	}
}
