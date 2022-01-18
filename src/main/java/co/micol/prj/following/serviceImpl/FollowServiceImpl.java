package co.micol.prj.following.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import co.micol.prj.following.service.FollowingMapper;
import co.micol.prj.following.service.FollowingService;
import co.micol.prj.following.service.FollowingVO;
import co.micol.prj.following.service.ViewFollowVO;

@Repository("followDAO")
public class FollowServiceImpl implements FollowingService {

	@Autowired
	private FollowingMapper map;
	
	@Override
	public List<ViewFollowVO> followerSelect(String member_id) {
		// TODO Auto-generated method stub
		return map.followerSelect(member_id);
	}

	@Override
	public List<ViewFollowVO> followeeSelect(String member_id) {
		// TODO Auto-generated method stub
		return map.followeeSelect(member_id);
	}

	@Override
	public List<ViewFollowVO> followeeSelectSome() {
		// TODO Auto-generated method stub
		return map.followeeSelectSome();
	}

	@Override
	public FollowingVO followSelectOne(FollowingVO follow) {
		// TODO Auto-generated method stub
		return map.followSelectOne(follow);
	}

	@Override
	public int insertFollow(FollowingVO follow) {
		// TODO Auto-generated method stub
		return map.insertFollow(follow);
	}

	@Override
	public int deleteFollow(String follow_id) {
		// TODO Auto-generated method stub
		return map.deleteFollow(follow_id);
	}

	@Override
	public boolean isFollowCheck(FollowingVO follow) {
		// TODO Auto-generated method stub
		return map.isFollowCheck(follow);
	}

	@Override
	public String followIdSearch(FollowingVO follow) {
		// TODO Auto-generated method stub
		return map.followIdSearch(follow);
	}

}
