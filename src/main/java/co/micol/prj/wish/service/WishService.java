package co.micol.prj.wish.service;

import java.util.List;

public interface WishService {
	//��ü ��ȸ
	List<ViewWishVO> wishSelectList();
	
	//���
	int wishInsert(WishVO wish);
	
	//����
	int wishDelete(WishVO wish);
}