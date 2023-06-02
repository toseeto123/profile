package kr.co.profile.user.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
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
import org.springframework.web.util.WebUtils;

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
		if(session.getAttribute("login")!= null) {
			//기존에 login이라는 session이 존재할경우	
			session.removeAttribute("login");
		}
		//로그인 성공할 경우 userVO 객체 반환
		userVO vo = uService.login(uvo);
		System.out.println(vo);
		
		//로그인이 성공하는 경우
		if( vo != null) {
			session.setAttribute("login", uvo); //세션에 login이란 이름으로 userVO저장
			System.out.println("로그인성공");
			returnURL = "redirect:/"; //로그인 성공시 index로 가게 함
			
			// 로그인 관련 쿠키 사용(자동로그인)
			if(request.getParameter("autologin") != null) {
				System.out.println("쿠키 들어왔습니다.");
				//쿠키를 생성하고 로그인되어 있을때 생성된 세션id를 쿠키에 저장
				Cookie cookie = new Cookie("loginCookie", session.getId());
				//쿠키 찾을 경로
				int amount = 60 * 60 * 24 * 7;
				cookie.setPath("/");
				cookie.setMaxAge(amount);
				//쿠키 적용
				response.addCookie(cookie);
				System.out.println("cookie자동로그인:" + cookie);
				//currentTImeMillis가 1/1000초 단위이기때문에 1000곱해서 더해준다.
				Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));
				//현재 세션 id와 유효시간을 사용자 테이블에 저
				uService.keepLogin(uvo.getUserId(), session.getId(), sessionLimit);
				
			}
			
		}else {
			request.setAttribute("msg", "로그인에 실패하였습니다");
			System.out.println("로그인실패");
			request.setAttribute("url", "/users/userlogin");
			returnURL = "/commons/alert";
		}

		return returnURL; 
	}
	
	//로그아웃
	@RequestMapping(value = "/userlogout")
	public String logout(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
		String returnURL;
		Object obj = session.getAttribute("login");
		if(obj != null) {
			userVO uvo = (userVO)obj;
			session.removeAttribute("login");
			session.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if( loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				//저장경로, 시간만료후 저
				response.addCookie(loginCookie);
				//사용자 테이블에서도 유효기간을 현재시간으로 다시 세팅해줘야함 
				Date date = new Date(System.currentTimeMillis()); //여기는 왜 곱해서 안더해주는지 알아낼것
				uService.keepLogin(uvo.getUserId(),session.getId(),date);
			}
		}
		
		return "redirect:/";
	}
}
