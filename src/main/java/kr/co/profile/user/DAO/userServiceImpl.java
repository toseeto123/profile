package kr.co.profile.user.DAO;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.profile.user.VO.userVO;

@Service
public class userServiceImpl implements userService {
	
	@Autowired
	userDAO userDao;
	
	@Override
	public void addUser(userVO uvo) {
		userDao.addUser(uvo);
	}
	@Override
	public int idcheck(String userId) {
			int count =  userDao.idCheck(userId);
		 return count;
	}
	@Override
	public userVO login(userVO uvo) {
		return userDao.login(uvo);
	}
	//자동로그인을 체크한 경우에 사용자 테이블에 세션, 유효시간을 저
	@Override
	public void keepLogin(String userId, String sessionId, Date next) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("sessionId",sessionId);
		map.put("next", next);
		
		System.out.println(map);
		userDao.keepLogin(map);
	}
	//이전에 로그인 기록으로, 유효시간이 넘지않은 세션을 가지고 있는지 확인
	@Override
	public userVO checkUserSessionKey(String sessionId) {
		return userDao.checkUserSessionKey(sessionId);
	}
}
