package co.micol.prj.doneread.service;

import java.util.List;

public interface DonereadMapper {
	
	List<ViewDonereadVO> donereadSelectList(String id);

	int donereadInsert(DonereadVO onread);

	int donereadDelete(DonereadVO onread);
}
