package co.micol.prj.member.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.member.service.MemberMapper;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper map;

	@Override
	public MemberVO memberSelect(MemberVO member) {
		return map.memberSelect(member);
	}

	@Override
	public int memberInsert(MemberVO member) {
		return 0;
	}

	@Override
	public int memberUpdate(MemberVO member) {
		return 0;
	}

	@Override
	public boolean isIdCheck(String member_id) {
		return map.isIdCheck(member_id);
	}

}
