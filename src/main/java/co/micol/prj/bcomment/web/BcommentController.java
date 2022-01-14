package co.micol.prj.bcomment.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.bcomment.service.BcommentService;
import co.micol.prj.member.service.MemberVO;

@Controller
public class BcommentController {

	@Autowired
	private BcommentService bcommentDao;
	
	
}
