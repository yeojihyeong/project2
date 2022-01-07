package co.micol.prj.blog.service;

import java.util.List;

import co.micol.prj.utils.PagingVO;

public interface BlogMapper {
	//�Խù� �� ����
	int countReview();
	
	// ��ü��ȸ
	List<BlogVO> blogSelectList(PagingVO vo);

	// �ܰ���ȸ(����ȸ)
	BlogVO blogSelect(BlogVO blog);

	// ���� �ۼ�(�μ�Ʈ)
	int blogInsert(BlogVO blog);

	// ���� ����
	int blogUpdate(BlogVO blog);

	// ���� ����
	int blogDelete(BlogVO blog);
	
	// ���� ��ȸ��
	int updateReviewCnt(String blog_id);

	// ��ȸ�� ���� ���� ��ȸ
	BlogVO likedReview(BlogVO blog);
	
	// ���� �˻�
	List<BlogVO> reviewSearch(BlogVO blog);
	
	// ��� �Է�
	
}
