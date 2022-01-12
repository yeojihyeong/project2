package co.micol.prj.board.web;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.micol.prj.bcomment.service.BcommentService;
import co.micol.prj.bcomment.service.BcommentVO;
import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardDao;
	
	@Autowired
	private BcommentService bcommentDao;
	
	@Autowired
	private String saveDir; //파일저장 경로를 자동 주입
	
	@RequestMapping("boardList.do")
	public String boardSelectList(Model model) {
		model.addAttribute("boards", boardDao.boardSelectList());
		return "ogani/board/boardList";
	}
	
	@RequestMapping("boardInsertPage.do")
	public String boardInsertPage() {
		return "ogani/board/boardInsert";
	}
	
	@RequestMapping("boardInsert.do")
	public String boardInsert(@RequestParam("file") MultipartFile file, BoardVO board, Model model, HttpSession session) {
		String originalFileName = file.getOriginalFilename();
		//String saveDir = "fileUpload" + File.separatorChar; //실서버로 베포할때 저장공간, 그때 열면됨
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			//uuid에 파일확장자 추가하여 물리적 파일명을 만듬
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			try {
				file.transferTo(new File(saveDir, saveFileName));
				board.setBoard_picture(originalFileName);
				board.setBoard_pfile(saveFileName);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		session.setAttribute("member_id", "test@abc.com");
		//board = (BoardVO)session.getAttribute("");
		board.setBoard_id((String) session.getAttribute("member_id"));
		int r = boardDao.boardInsert(board);
		if(r > 0) {
			model.addAttribute("message", "등록성공");
		} else {
			model.addAttribute("message", "등록실패");
		}
		model.addAllAttributes(boardDao.boardSelectList());
		return "ogani/board/boardList";
	}
	
	@RequestMapping("boardDetailPage.do")
	public String boardDetailPage(BoardVO board, Model model, BcommentVO bcomment) {
		model.addAttribute("boardDetail", boardDao.boardSelect(board));
		model.addAttribute("bcommDetail", bcommentDao.bcommentSelectList());
		return "ogani/board/boardDetailPage";
	}
	
	@RequestMapping("boardUpdate.do")
	public String boardUpdate(@RequestParam("file") MultipartFile file, Model model, BoardVO board) {
		String originalFileName = file.getOriginalFilename();
		//String saveDir = "fileUpload" + File.separatorChar; //실서버로 베포할때 저장공간, 그때 열면됨
		if(!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			//uuid에 파일확장자 추가하여 물리적 파일명을 만듬
			String saveFileName = uuid + originalFileName.substring(originalFileName.lastIndexOf("."));
			try {
				file.transferTo(new File(saveDir, saveFileName));
				board.setBoard_picture(originalFileName);
				board.setBoard_pfile(saveFileName);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		model.addAttribute(boardDao.boardUpdate(board));
		return "ogani/board/boardUpdateSuccess";
	}
	
	@RequestMapping("boardUpdatePage.do")
	public String boardUpdatePage(Model model, BoardVO board) {
		model.addAttribute("board", boardDao.boardSelect(board));
		return "ogani/board/boardUpdate";
	}
	
	@RequestMapping("boardDelete.do")
	public String boardDelete(Model model, BoardVO board) {
		model.addAttribute(boardDao.boardDelete(board));
		return "ogani/board/boardDeleteSuccess";
	}
	
}
