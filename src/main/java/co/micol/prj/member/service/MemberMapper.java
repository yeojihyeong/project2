package co.micol.prj.member.service;

import java.util.List;


public interface MemberMapper {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO member);
	int memberInsert(MemberVO member);
	int memberUpdate(MemberVO member);
	int memberDelete(MemberVO member);
	
	MemberVO memberSearch1(String member_id);
	int memberDelete1(String member_id);
	int memberUpdate1(MemberVO member);
	boolean isIdCheck(String member_id);
	List<MemberVO> memberSearch(String key, String data);
	MemberVO memberOne(String member_id);
}
