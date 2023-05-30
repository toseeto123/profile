package kr.co.profile.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
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
	
	
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userJoin() {
		
		return "/user/userJoin";
	}
	@RequestMapping(value = "/userlist", method = RequestMethod.POST)
	public String userInsert(userVO uvo) {
		uService.addUser(uvo);
		return "redirect:/users/userlogin";
	}
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	 @ResponseBody //responsebody 를 사용하여 JSON으로 넘어온 userid 매개변수로 받음
	public Map<Object, Object> idCheck(@RequestBody String userId) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object,Object>();
		count = uService.idcheck(userId);
		System.out.println(count);
		map.put("cnt", count);
		return map;
	}
	@RequestMapping(value="/userlogin", method = RequestMethod.GET)
	public String userLogin() {
		return "/user/userLogin";
	}
	
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String userLogin(HttpSession session,userVO uvo,HttpServletResponse response,HttpServletRequest request) {
		String returnURL ="";
//		if(session.getAttribute("login")!= null) {
//			//기존에 login이라는 session이 존재할경우	
//			session.removeAttribute("login");
//		}
		//로그인 성공할 경우 userVO 객체 반환
		userVO vo = uService.login(uvo);
		System.out.println(vo);
		
		//로그인이 성공하는 경우
		if( uvo != null) {
			session.setAttribute("login", uvo); //세션에 login이란 이름으로 userVO저장
			System.out.println("로그인성공");
			returnURL = "redirect:/"; //로그인 성공시 index로 가게 함
		}else {
			request.setAttribute("msg", "로그인에 실패하였습니다");
			System.out.println("로그인실패");
			request.setAttribute("url", "/user/userLogin");
			returnURL = "/commons/alert";
		}
		//세션 추가
		//로그인이 성공시 로그인폼에서 쿠키가 체크된 상태로 로그인 요청이 왔는지 확인
//		if( uvo.isUseCookie()) {
//			
//		}
		return "/commons/alert"; 
	}
	
	//로그아웃
	public String logout(HttpSession session) {
		String returnURL;
		session.invalidate();
		return "redirect:/";
	}
}
