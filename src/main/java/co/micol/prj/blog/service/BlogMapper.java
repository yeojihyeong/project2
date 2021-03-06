package co.micol.prj.blog.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.micol.prj.utils.PagingVO;

public interface BlogMapper {
	
	int countReview(String member_id);
  
	List<BlogVO> blogSelectList(@Param("start_no") int start_no, @Param("end_no") int end_no, @Param("member_id") String member_id);
  
	BlogVO blogSelect(BlogVO blog);
  
	int blogInsert(BlogVO blog);
  
	int blogUpdate(BlogVO blog);
  
	int blogDelete(BlogVO blog);
	
	int calcStar(String book_isbn);
	
	String getBlogOwner(String blog_id);
	String getBlogId(String member_id);
	
  
	int updateReviewCnt(String blog_id);
  
	List<BlogVO> likedReview();
	
	List<BlogVO> recentReview();
 
	
	List<BlogVO> blogReviewSearch(BlogVO blog);
	
	// 개별 리뷰 상세 조회
	BlogVO reviewDetailSelect(String blog_id);

	List<BlogVO> reviewSearch(BlogVO blog);
	
	List<BlogVO> searchList();
	
	// 상위 3개
	List<BlogVO> searchListThree();
	
}
