package co.micol.prj.bcomment.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.micol.prj.bcomment.service.BcommentMapper;
import co.micol.prj.bcomment.service.BcommentService;
import co.micol.prj.bcomment.service.BcommentVO;

public class BcommentServiceImpl implements BcommentService {
	@Autowired
	private BcommentMapper map;

	@Override
	public List<BcommentVO> bcommentSelectList() {
		System.out.println(map.bcommentSelectList());
		return map.bcommentSelectList();
	}

	@Override
	public BcommentVO bcommentSelect(BcommentVO bcomment) {
		return map.bcommentSelect(bcomment);
	}

	@Override
	public int bcommentInsert(BcommentVO bcomment) {
		return map.bcommentInsert(bcomment);
	}

	@Override
	public int grpUpdate(BcommentVO bcomment) {
		return map.grpDelete(bcomment);
	}

	@Override
	public int grpDelete(BcommentVO bcomment) {
		return map.grpDelete(bcomment);
	}

	@Override
	public int grpsUpdate(BcommentVO bcomment) {
		return map.grpsUpdate(bcomment);
	}

	@Override
	public int grpsDelete(BcommentVO bcomment) {
		return map.grpsDelete(bcomment);
	}

	
	
	
	
}
