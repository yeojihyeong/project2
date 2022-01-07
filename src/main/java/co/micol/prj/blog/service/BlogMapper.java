package co.micol.prj.blog.service;

import java.util.List;

import co.micol.prj.utils.PagingVO;

public interface BlogMapper {
	//게시물 총 갯수
	int countReview();
	
	// 전체조회
	List<BlogVO> blogSelectList(PagingVO vo);

	// 단건조회(상세조회)
	BlogVO blogSelect(BlogVO blog);

	// 리뷰 작성(인서트)
	int blogInsert(BlogVO blog);

	// 리뷰 수정
	int blogUpdate(BlogVO blog);

	// 리뷰 삭제
	int blogDelete(BlogVO blog);
	
	// 리뷰 조회수
	int updateReviewCnt(String blog_id);

	// 조회수 높은 리뷰 조회
	BlogVO likedReview(BlogVO blog);
	
	// 리뷰 검색
	List<BlogVO> reviewSearch(BlogVO blog);
	
	// 댓글 입력
	
}
