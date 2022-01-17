package co.micol.prj.doneread.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.doneread.service.DonereadMapper;
import co.micol.prj.doneread.service.DonereadService;
import co.micol.prj.doneread.service.DonereadVO;
import co.micol.prj.doneread.service.ViewDonereadVO;
import co.micol.prj.onread.service.OnreadMapper;

@Repository("donereadDAO")
public class DonereadServiceImpl implements DonereadService{

	@Autowired
	private DonereadMapper map;
	
	@Override
	public List<ViewDonereadVO> donereadSelectList(String id) {
		// TODO Auto-generated method stub
		return map.donereadSelectList(id);
	}

	@Override
	public int donereadInsert(DonereadVO onread) {
		// TODO Auto-generated method stub
		return map.donereadInsert(onread);
	}

	@Override
	public int donereadDelete(DonereadVO onread) {
		// TODO Auto-generated method stub
		return map.donereadDelete(onread);
	}

}
