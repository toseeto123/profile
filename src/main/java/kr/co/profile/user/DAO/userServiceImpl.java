package kr.co.profile.user.DAO;

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

}
