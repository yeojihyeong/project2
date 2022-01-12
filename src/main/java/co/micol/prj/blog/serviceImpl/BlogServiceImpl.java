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
	public List<BlogVO> blogSelectList(int start_no, int end_no, String member_id) {
		return map.blogSelectList(start_no, end_no, member_id);
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
	public BlogVO likedReview(BlogVO blog) {
		return map.likedReview(blog);
	}

	// ���� �˻�
	public List<BlogVO> reviewSearch(BlogVO blog) {
		return map.reviewSearch(blog);
	}

	@Override
	public int countReview(String member_id) {
		// TODO Auto-generated method stub
		return map.countReview(member_id);
	}

	@Override
	public BlogVO blogSelect(BlogVO blog) {
		// TODO Auto-generated method stub
		return null;
	}


	

	// ��� �ۼ�
}
