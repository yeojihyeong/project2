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

	@Override
	public MemberVO memberSelect(MemberVO member) {
		// TODO Auto-generated method stub
		return memberMap.memberSelect(member);
	}

	public List<BlogVO> blogSelectList(int start_no, int end_no, String member_id) {
		return map.blogSelectList(start_no, end_no, member_id);
	}

	public BlogVO blogSelectList(BlogVO blog) {
		return map.blogSelect(blog);
	}

	public int blogInsert(BlogVO blog) {
		return map.blogInsert(blog);
	}

	public int blogUpdate(BlogVO blog) {
		return map.blogUpdate(blog);
	}

	public int blogDelete(BlogVO blog) {
		return map.blogDelete(blog);
	}

	//조회수 증가
	public int updateReviewCnt(String blog_id) {
		return map.updateReviewCnt(blog_id);
	}

	public List<BlogVO> likedReview(){
		return map.likedReview();
	}

	public List<BlogVO> reviewSearch(String searchValue) {
		return map.reviewSearch(searchValue);
	}

	@Override
	public int countReview(String member_id) {
		// TODO Auto-generated method stub
		return map.countReview(member_id);
	}

	@Override
	public BlogVO reviewDetailSelect(String blog_id) {
		return map.reviewDetailSelect(blog_id);
	}

	@Override
	public List<BlogVO> recentReview() {
		// TODO Auto-generated method stub
		return map.recentReview();
	}

	@Override
	public BlogVO blogSelect(BlogVO blog) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BlogVO> blogReviewSearch(BlogVO blog) {
		return null;
	}

	@Override
	public List<BlogVO> searchList() {
		return map.searchList();
	}

	@Override
	public List<BlogVO> searchListThree() {
		return map.searchListThree();
	}

	@Override
	public int calcStar(String book_isbn) {
		return map.calcStar(book_isbn);
	}

	@Override
	public String getBlogOwner(String blog_id) {
		return map.getBlogOwner(blog_id);
	}

	@Override
	public String getBlogId(String member_id) {
		return map.getBlogId(member_id);
	}

}
