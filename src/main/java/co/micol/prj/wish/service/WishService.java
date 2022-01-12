package co.micol.prj.wish.service;

import java.util.List;

public interface WishService {
	//전체 조회
	List<ViewWishVO> wishSelectList();
	
	//등록
	int wishInsert(WishVO wish);
	
	//삭제
	int wishDelete(WishVO wish);
}
