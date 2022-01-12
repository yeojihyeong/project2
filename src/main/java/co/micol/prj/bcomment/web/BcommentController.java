package co.micol.prj.bcomment.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.bcomment.service.BcommentService;

@Controller
public class BcommentController {

	@Autowired
	private BcommentService bcommentDao;
	
	@RequestMapping("BcommentList.do")
	private String BcommentSelectList(Model model) {
		model.addAttribute("bcomm", bcommentDao.bcommentSelectList());
		return "ogani/board/boardDetailPage";
	}
	
}
