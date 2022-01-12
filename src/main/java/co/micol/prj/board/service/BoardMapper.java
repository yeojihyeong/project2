package co.micol.prj.board.service;

import java.util.List;

public interface BoardMapper {
	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO board);
	int boardInsert(BoardVO board);
	int boardUpdate(BoardVO board);
	int boardDelete(BoardVO board);
	
}
