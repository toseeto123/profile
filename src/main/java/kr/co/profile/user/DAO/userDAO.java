package kr.co.profile.user.DAO;


import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.profile.user.VO.userVO;

@Repository
public class userDAO {
	
	

	@Autowired
	SqlSessionTemplate sqlSession;
	

	
	public void addUser(userVO uvo) {
		System.out.println("userdao 실행합니다");
		sqlSession.insert("userDAO.insert", uvo);
	}

	public int idCheck(String userId) {
		int count = sqlSession.selectOne("userDAO.selectOne", userId);
		return count;
	}


	public userVO login(userVO uvo) {
		System.out.println("dao uvo" + uvo);
		return sqlSession.selectOne("userDAO.login",uvo);
	}

	public void keepLogin(Map<String, Object> map) {
		sqlSession.update("userDAO.keepLogin", map);
	}

	public userVO checkUserSessionKey(String sessionId) {
		return sqlSession.selectOne("userDAO.checkUserSessionKey", sessionId);
	}

	public userVO getMyInfo(userVO uvo) {
		return sqlSession.selectOne("userDAO.getMyInfo",uvo);
	}

	public void deleteMyInfo(userVO uvo) {
		sqlSession.delete("userDAO.deleteMyInfo",uvo);
	}

}
