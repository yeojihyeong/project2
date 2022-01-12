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

	// �α��� ����
	@Override
	public MemberVO memberSelect(MemberVO member) {
		// TODO Auto-generated method stub
		return memberMap.memberSelect(member);
	}

	// ���� ��ü ��ȸ
	public List<BlogVO> blogSelectList(PagingVO blog) {
		return map.blogSelectList(blog);
	}

	// �� ��ȸ
	public BlogVO blogSelectList(BlogVO blog) {
		return map.blogSelect(blog);
	}

	// ���� �ۼ�
	public int blogInsert(BlogVO blog) {
		return map.blogInsert(blog);
	}

	// ���� ����
	public int blogUpdate(BlogVO blog) {
		return map.blogUpdate(blog);
	}

	// ���� ����
	public int blogDelete(BlogVO blog) {
		return map.blogDelete(blog);
	}

	// ���� ��ȸ�� ����
	public int updateReviewCnt(String blog_id) {
		return map.updateReviewCnt(blog_id);
	}

	// ��ȸ�� ���� ���� ��ȸ(���� �������� �� ��)
	public List<BlogVO> likedReview(){
		return map.likedReview();
	}

	// ���� �˻�
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

	@Override
	public BlogVO reviewDetailSelect(String blog_id) {
		// TODO Auto-generated method stub
		return map.reviewDetailSelect(blog_id);
	}

	


	

	// ��� �ۼ�
}
