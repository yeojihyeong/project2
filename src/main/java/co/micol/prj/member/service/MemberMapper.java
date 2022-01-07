package co.micol.prj.member.service;

public interface MemberMapper {
	MemberVO memberSelect(MemberVO member);
	int memberInsert(MemberVO member);
	int memberUpdate(MemberVO member);
	
	boolean isIdCheck(String member_id);
}
