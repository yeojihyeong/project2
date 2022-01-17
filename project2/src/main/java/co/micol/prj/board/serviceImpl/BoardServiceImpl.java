package co.micol.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.board.service.BoardMapper;
import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;

@Repository("boardDao")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper map;

	@Override
	public List<BoardVO> boardSelectList() {
		return map.boardSelectList();
	}

	@Override
	public BoardVO boardSelect(BoardVO board) {
		return map.boardSelect(board);
	}

	@Override
	public int boardInsert(BoardVO board) {
		return map.boardInsert(board);
	}

	@Override
	public int boardUpdate(BoardVO board) {
		return map.boardUpdate(board);
	}

	@Override
	public int boardDelete(BoardVO board) {
		return map.boardDelete(board);
	}
	
	
}
