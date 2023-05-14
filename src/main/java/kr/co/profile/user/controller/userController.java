package kr.co.profile.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.profile.user.DAO.userService;
import kr.co.profile.user.VO.userVO;

@RequestMapping(value="/users")
@Controller
public class userController {
	
	@Autowired
	userService uService;
	
	@RequestMapping(value = "/userList", method = RequestMethod.POST)
	public String userInsert(userVO uvo) {
		uService.addUser(uvo);
		return "/user/userList";
	}
	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String userLogin() {
		
		return "/user/userLogin";
	}
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userJoin() {
		
		return "/user/userJoin";
	}
}
