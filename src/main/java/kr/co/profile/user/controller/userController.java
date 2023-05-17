package kr.co.profile.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.profile.user.DAO.userService;
import kr.co.profile.user.VO.userVO;

@RequestMapping(value="/users")
@Controller
public class userController {
	
	@Autowired
	userService uService;
	
	@RequestMapping(value = "/userlist", method = RequestMethod.POST)
	public String userInsert(userVO uvo) {
		uService.addUser(uvo);
		return "redirect:/user/userList";
	}
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	 @ResponseBody //responsebody 를 사용하여 JSON으로 넘어온 userid 매개변수로 받음
	public Map<Object, Object> idCheck(@RequestBody String userId) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object,Object>();
		count = uService.idcheck(userId);
		map.put("cnt", count);
		return map;
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
