package co.micol.prj.blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.blog.service.BlogMapper;
import co.micol.prj.blog.service.BlogService;
import co.micol.prj.blog.service.BlogVO;
import co.micol.prj.member.service.MemberMapper;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.utils.PagingVO;

@Repository("blogDAO")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogMapper map;
	private MemberMapper memberMap;

	// 로그인 여부
	@Override
	public MemberVO memberSelect(MemberVO member) {
		// TODO Auto-generated method stub
		return memberMap.memberSelect(member);
	}

	// 리뷰 전체 조회
	public List<BlogVO> blogSelectList(PagingVO blog) {
		return map.blogSelectList(blog);
	}

	// 상세 조회
	public BlogVO blogSelectList(BlogVO blog) {
		return map.blogSelect(blog);
	}

	// 리뷰 작성
	public int blogInsert(BlogVO blog) {
		return map.blogInsert(blog);
	}

	// 리뷰 수정
	public int blogUpdate(BlogVO blog) {
		return map.blogUpdate(blog);
	}

	// 리뷰 삭제
	public int blogDelete(BlogVO blog) {
		return map.blogDelete(blog);
	}

	// 리뷰 조회수 증가
	public int updateReviewCnt(String blog_id) {
		return map.updateReviewCnt(blog_id);
	}

	// 조회수 많은 리뷰 조회(메인 페이지에 들어갈 것)
	public BlogVO likedReview(BlogVO blog) {
		return map.likedReview(blog);
	}

	// 리뷰 검색
	public List<BlogVO> reviewSearch(BlogVO blog) {
		return map.reviewSearch(blog);
	}

	@Override
	public int countReview() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BlogVO blogSelect(BlogVO blog) {
		// TODO Auto-generated method stub
		return null;
	}


	

	// 댓글 작성
}
