package co.micol.prj.board.service;

import java.util.List;

public interface BoardService {
	BoardVO boardSelect(BoardVO board);
	List<BoardVO> boardSelectList();
	int boardInsert(BoardVO board);
	int boardUpdate(BoardVO board);
	int boardDelete(BoardVO board);
	
}
