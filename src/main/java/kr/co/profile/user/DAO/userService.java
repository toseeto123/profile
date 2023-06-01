package kr.co.profile.user.DAO;

import java.util.Date;

import kr.co.profile.user.VO.userVO;

public interface userService {
	
	public void addUser(userVO uvo);

	public int idcheck(String userId);

	public userVO login(userVO uvo);

	public void keepLogin(String userId, String sessionId, Date next);
	
	public userVO checkUserSessionKey(String sessionId);
}
