package co.micol.prj.wish.service;

import java.util.List;

public interface WishService {
	//��ü ��ȸ
	List<ViewWishVO> wishSelectList(String id);
	
	//���
	int wishInsert(WishVO wish);
	
	//����
	int insertWishBook(WishVO wish);

	int wishDelete(String wish_id);
}
