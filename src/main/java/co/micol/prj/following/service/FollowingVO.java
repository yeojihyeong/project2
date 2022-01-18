package co.micol.prj.following.service;

import co.micol.prj.member.service.MemberVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FollowingVO {
	private String follow_id;
	private String follower;
	private String followee;
	
	private MemberVO memberVO;
}
