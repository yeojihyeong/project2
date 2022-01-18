package co.micol.prj.following.service;

import java.util.List;

public interface FollowingMapper {
	// 팔로잉 목록
	List<ViewFollowVO> followerSelect(String member_id);

	// 팔로이 목록
	List<ViewFollowVO> followeeSelect(String member_id);

	List<ViewFollowVO> followeeSelectSome();
	
	boolean isFollowCheck(FollowingVO follow);
	
	String followIdSearch(FollowingVO follow);
	
	//팔로우 여부 확인
	FollowingVO followSelectOne(FollowingVO follow);
	
	// 팔로우 추가
	int insertFollow(FollowingVO follow);

	// 팔로우 취소
	int deleteFollow(String follow_id);
}
