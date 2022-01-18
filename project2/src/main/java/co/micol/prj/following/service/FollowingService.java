package co.micol.prj.following.service;

import java.util.List;

public interface FollowingService {
	// 팔로잉 목록
	List<ViewFollowVO> followSelect();

	// 팔로이 목록
	List<ViewFollowVO> followeeSelect();

	List<ViewFollowVO> followeeSelectSome();

	// 팔로우 여부 확인
	FollowingVO followSelectOne(FollowingVO follow);

	// 팔로우 추가
	int insertFollow(FollowingVO follow);

	// 팔로우 취소
	int deleteFollow(FollowingVO follow);
}
