package co.micol.prj.main.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.main.service.GenreVO;
import co.micol.prj.main.service.MainMapper;
import co.micol.prj.main.service.MainService;

@Repository("mainDao")
public class mainServiceImpl implements MainService{

	@Autowired
	private MainMapper map;

	@Override
	public List<GenreVO> selectList() {
		return map.selectList();
	}
	
}
