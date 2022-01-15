package co.micol.prj.member.web;


import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberDao;
	
	@Autowired
	ServletContext sc;
	
	@Autowired
	private HttpServletRequest request;
	
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
	
	@RequestMapping("/joinForm.do")
	public String joinForm() {
		return "ogani/join/joinForm";
	}
	
	@PostMapping("/join.do")
	public String join(MemberVO member, Model model) {
		
		int insert = memberDao.memberInsert(member);
		if(insert != 0) {
			model.addAttribute("message", "가입이 완료되었습니다.");
		}else {
			model.addAttribute("message", "다시 시도해주십시오.");
		}
		return "ogani/join/join";
	}
	
	@PostMapping("/ajaxIsIdCheck.do")
	@ResponseBody
	public boolean ajaxIsIdCheck(String member_id) {
		return memberDao.isIdCheck(member_id);
	}
	
	@RequestMapping("/myinfo.do")
	public String myinfo(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("member_id");
		model.addAttribute("member", memberDao.memberOne(id));
			
		return "ogani/myinfo/myinfo";
	}
	
	@PostMapping("/memberUpdate.do")
	@ResponseBody
	public int memberUpdate(@RequestParam("file") MultipartFile file, MemberVO member, Model model) {
		String originalFileName = file.getOriginalFilename();
		
		String webPath = "/resources/upload";
		String realPath = sc.getRealPath(webPath);
		System.out.printf("realPath: %s\n", realPath);
		
		File savePath = new File(realPath);
		if(!savePath.exists())
			savePath.mkdirs();
		
		realPath += File.separator + originalFileName;
		File saveFile = new File(realPath);
		
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			
			try {
				file.transferTo(saveFile);
				member.setMember_picture(originalFileName);
				member.setMember_pfile(saveFileName);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return memberDao.memberUpdate(member);
	}
  
	@RequestMapping("/memberSelectList.do")
	   public String memberSelectList(Model model) {
	      model.addAttribute("members", memberDao.memberSelectList());
	      return "admin/member/memberSelectList";
	}
	
	@RequestMapping("/adminMemberSearch.do")
		public String memberSearch(@Param("member_id") String member_id, Model model) {
		System.out.println(member_id);
		model.addAttribute("member",memberDao.memberSearch1(member_id));
		return "admin/member/memberSearch";
		
	}
	
	@RequestMapping("/adminMemberUpdate1.do")
	public String adminmemberUpdate1(@Param("member_id") String member_id, Model model) {
		model.addAttribute("member",memberDao.memberUpdate1(member_id));
		System.out.println(member_id);
		
		model.addAttribute("member",memberDao.memberSelectList());
		return "admin/book/bookUpdateForm";
	}
	
	
	@RequestMapping("/memberDelete1.do")
	public String memberDelete1(@Param("member_id") String member_id, Model model) {
		System.out.println(member_id);
		
		model.addAttribute("member",memberDao.memberDelete1(member_id));
		
		
		model.addAttribute("members", memberDao.memberSelectList());
		return "admin/member/memberSelectList";
	}
	
}

