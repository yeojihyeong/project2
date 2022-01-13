package co.micol.prj.wish.service;

import java.util.List;

public interface WishMapper {
	// ��ü ��ȸ
	List<ViewWishVO> wishSelectList(String id);

	// ���
	int wishInsert(WishVO wish);

	// ����
	int wishDelete(WishVO wish);
}
