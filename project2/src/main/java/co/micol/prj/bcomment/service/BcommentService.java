package co.micol.prj.bcomment.service;

import java.util.List;

public interface BcommentService {
	List<BcommentVO> bcommentSelectList();
	BcommentVO bcommentSelect(BcommentVO bcomment);
	int bcommentInsert(BcommentVO bcomment);
	int grpUpdate(BcommentVO bcomment);
	int grpDelete(BcommentVO bcomment);
	int grpsUpdate(BcommentVO bcomment);
	int grpsDelete(BcommentVO bcomment);
}
