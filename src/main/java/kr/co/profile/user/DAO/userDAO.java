package kr.co.profile.user.DAO;


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
}
