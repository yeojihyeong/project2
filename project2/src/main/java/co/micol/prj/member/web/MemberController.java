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
		if (member != null) {
			session.setAttribute("member", member);
			session.setAttribute("member_id", member.getMember_id());
			session.setAttribute("member_author", member.getMember_author());
			session.setAttribute("member_name", member.getMember_name());
			session.setAttribute("member_password", member.getMember_password());
		} else {
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
		if (insert != 0) {
			model.addAttribute("message", "媛��엯�씠 �셿猷뚮릺�뿀�뒿�땲�떎.");
		} else {
			model.addAttribute("message", "�떎�떆 �떆�룄�빐二쇱떗�떆�삤.");
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
		if (!savePath.exists())
			savePath.mkdirs();

		realPath += File.separator + originalFileName;
		File saveFile = new File(realPath);

		if (!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));

			try {
				file.transferTo(saveFile);
				member.setMember_picture(originalFileName);
				member.setMember_pfile(saveFileName);
			} catch (Exception e) {
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
		model.addAttribute("member", memberDao.memberSearch1(member_id));
		return "admin/member/memberSearch";

	}

	@PostMapping("/adminMemberUpdate1.do")
	@ResponseBody
	public String adminmemberUpdate1(@Param("member_id") String member_id, @RequestParam("file") MultipartFile file, MemberVO member, Model model) {
		String originalFileName = file.getOriginalFilename();

		String webPath = "/resources/upload";
		String realPath = sc.getRealPath(webPath);
		System.out.printf("realPath: %s\n", realPath);

		File savePath = new File(realPath);
		if (!savePath.exists())
			savePath.mkdirs();

		realPath += File.separator + originalFileName;
		File saveFile = new File(realPath);

		if (!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));

			try {
				file.transferTo(saveFile);
				member.setMember_picture(originalFileName);
				member.setMember_pfile(saveFileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		model.addAttribute(memberDao.memberUpdate1(member));
		System.out.println(member_id);
		model.addAttribute("member", memberDao.memberSearch1(member_id));
		
		return "admin/member/memberUpdateForm";
	}
	
	@RequestMapping("/memberDeleteForm.do")
	public String memberDeleteForm() {
		return "ogani/memberDelete/memberDeleteForm";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO member, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO member1 = (MemberVO) session.getAttribute("member");
		
		String sessionPw = member1.getMember_password();
		String memberPw = member.getMember_password();
		
		if(!(sessionPw.equals(memberPw))) {
			return "ogani/member/memberDeleteForm";
		}
		
		memberDao.memberDelete(member);
		session.invalidate();
		
		return "ogani/memberDelete/memberDelete";
	}

	@RequestMapping("/memberDelete1.do")
	public String memberDelete1(@Param("member_id") String member_id, Model model) {
		System.out.println(member_id);

		model.addAttribute("member", memberDao.memberDelete1(member_id));

		model.addAttribute("members", memberDao.memberSelectList());
		return "admin/member/memberSelectList";
	}

}
