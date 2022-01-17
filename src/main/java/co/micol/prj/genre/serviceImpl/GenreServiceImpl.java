package co.micol.prj.genre.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.genre.service.GenreMapper;
import co.micol.prj.genre.service.GenreService;
import co.micol.prj.genre.service.GenreVO;

@Repository("genreDao")
public class GenreServiceImpl implements GenreService {

	@Autowired
	private GenreMapper map;
	
	@Override
	public List<GenreVO> genreSelectList() {

		return map.genreSelectList();
	}

}
