package co.micol.prj.following.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FollowingVO {
	private String follow_id;
	private String follower;
	private String followee;
}
