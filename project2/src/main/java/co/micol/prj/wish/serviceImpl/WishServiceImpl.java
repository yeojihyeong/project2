package co.micol.prj.wish.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.wish.service.ViewWishVO;
import co.micol.prj.wish.service.WishMapper;
import co.micol.prj.wish.service.WishService;
import co.micol.prj.wish.service.WishVO;

@Repository("wishDAO")
public class WishServiceImpl implements WishService{
	
	@Autowired
	private WishMapper map;
	

	@Override
	public int wishInsert(WishVO wish) {
		// TODO Auto-generated method stub
		return map.wishInsert(wish);
	}

	@Override
	public int wishDelete(WishVO wish) {
		// TODO Auto-generated method stub
		return map.wishDelete(wish);
	}

	@Override
	public List<ViewWishVO> wishSelectList(String id) {
		// TODO Auto-generated method stub
		return map.wishSelectList(id);
	}
	
}
