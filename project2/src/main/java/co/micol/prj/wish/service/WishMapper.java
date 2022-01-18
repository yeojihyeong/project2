package co.micol.prj.wish.service;

import java.util.List;

public interface WishMapper {

	List<ViewWishVO> wishSelectList(String id);

	int wishInsert(WishVO wish);
	
	int wishDelete(String wish_id);
}
