package co.micol.prj.onread.service;

import java.util.List;

public interface OnreadService {
	List<ViewOnreadVO> onreadSelectList(String id);

	int onreadInsert(OnreadVO onread);

	int onreadDelete(OnreadVO onread);
}
