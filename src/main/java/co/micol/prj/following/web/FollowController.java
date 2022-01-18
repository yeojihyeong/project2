package co.micol.prj.following.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.following.service.FollowingMapper;
import co.micol.prj.following.service.FollowingService;
import co.micol.prj.following.service.ViewFollowVO;

public class FollowController {
	/*
	@Autowired
	private FollowingService followDAO;

	@Autowired
	private FollowingMapper mapper;

	// 세 명 추출
	@RequestMapping("/followSelect")
	public String followSelect(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("member_id");
		
		System.out.println(id);
		
		List<ViewFollowVO> follower = mapper.followSelect();
		model.addAttribute("follower", follower);
		return "blog/blog/following";
	}

	@RequestMapping("/followSelect")
	public String followeSelect(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("member_id");
		
		System.out.println(id);

		List<ViewFollowVO> followee = mapper.followeeSelect();
		model.addAttribute("followee", followee);
		return "blog/blog/following";
	}

*/
}
