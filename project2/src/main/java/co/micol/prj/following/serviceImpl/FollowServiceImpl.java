package co.micol.prj.following.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import co.micol.prj.following.service.FollowingMapper;
import co.micol.prj.following.service.FollowingService;
import co.micol.prj.following.service.FollowingVO;
import co.micol.prj.following.service.ViewFollowVO;

public class FollowServiceImpl implements FollowingService {

	@Autowired
	private FollowingMapper map;
	
	@Override
	public List<ViewFollowVO> followSelect() {
		// TODO Auto-generated method stub
		return map.followSelect();
	}

	@Override
	public List<ViewFollowVO> followeeSelect() {
		// TODO Auto-generated method stub
		return map.followeeSelect();
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
	public int deleteFollow(FollowingVO follow) {
		// TODO Auto-generated method stub
		return map.deleteFollow(follow);
	}

}
