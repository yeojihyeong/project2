package co.micol.prj.blog.service;

import java.util.List;

import co.micol.prj.member.service.MemberVO;
import co.micol.prj.utils.PagingVO;

public interface BlogService {

	MemberVO memberSelect(MemberVO member);


	int countReview(String member_id);


	List<BlogVO> blogSelectList(int start_no, int end_no, String member_id);


	BlogVO blogSelect(BlogVO blog);


	int blogInsert(BlogVO blog);


	int blogUpdate(BlogVO blog);


	int blogDelete(BlogVO blog);


	int updateReviewCnt(String blog_id);


	BlogVO likedReview(BlogVO blog);
	

	List<BlogVO> reviewSearch(BlogVO blog);



	
}
