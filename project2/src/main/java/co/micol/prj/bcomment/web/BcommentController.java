package co.micol.prj.bcomment.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.micol.prj.bcomment.service.BcommentService;
import co.micol.prj.bcomment.service.BcommentVO;
import co.micol.prj.board.service.BoardVO;

@Controller
public class BcommentController {

	@Autowired
	private BcommentService bcommentDao;
	
	@ResponseBody
	@RequestMapping("commentInsert.do")
	public String commentInsert(@RequestParam("content") String content, 
			@RequestParam("board_num") String board_num, 
			@RequestParam("writer") String writer, BcommentVO bcomm) {
		System.out.println(content);
		System.out.println(board_num);
		System.out.println(writer);
		bcomm.setContent(content);
		bcomm.setBoard_num(board_num);
		bcomm.setWriter(writer);
		
		bcommentDao.bcommentInsert(bcomm);
		
		return "";
	}
}
