package co.micol.prj.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MemberMapper {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO member);
	int memberInsert(MemberVO member);
	int memberUpdate(MemberVO member);
	int memberDelete(MemberVO member);
	
	boolean isIdCheck(String member_id);
	List<MemberVO> memberSearch(@Param("key") String key, @Param("data") String data);

	MemberVO memberOne(String member_id);

}
