package co.micol.prj.like.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LikeVO {
	private String likeId;
	private String blogID;
	private String memberId;
	private int likeCheck;
}
