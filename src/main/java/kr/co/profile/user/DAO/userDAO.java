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
		sqlSession.insert("userDAO",uvo);
	}

	
}
