package kr.co.profile.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.profile.user.DAO.userService;
import kr.co.profile.user.VO.userVO;

@Controller
public class userController {

	@Autowired
	userService uService;
	
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String userInsert(userVO uvo) {
		uService.addUser(uvo);
		return "/user/userList";
	}
}
