package co.micol.prj.following.service;

public interface FollowingService {
	
	//팔로잉 목록
	FollowingVO followSelect(FollowingVO follow);
	
	//팔로이 목록
	FollowingVO followeeSelect(FollowingVO follow);
	
	//팔로우 추가
	int insertFollow(FollowingVO follow);
	
	//팔로우 취소
	int deleteFollow(FollowingVO follow);
}
