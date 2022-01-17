package co.micol.prj.onread.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.onread.service.OnreadMapper;
import co.micol.prj.onread.service.OnreadService;
import co.micol.prj.onread.service.OnreadVO;
import co.micol.prj.onread.service.ViewOnreadVO;

@Repository("readingDAO")
public class OnreadServiceImpl implements OnreadService {
	@Autowired
	private OnreadMapper map;

	@Override
	public List<ViewOnreadVO> onreadSelectList(String id) {
		// TODO Auto-generated method stub
		return map.onreadSelectList(id);
	}

	@Override
	public int onreadInsert(OnreadVO onread) {
		// TODO Auto-generated method stub
		return map.onreadInsert(onread);
	}

	@Override
	public int onreadDelete(OnreadVO onread) {
		// TODO Auto-generated method stub
		return map.onreadDelete(onread);
	}

}
