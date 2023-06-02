package kr.co.profile.user.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.co.profile.user.DAO.userService;
import kr.co.profile.user.VO.userVO;

//로그인 처리 담당 인터셉터
public class Interceptor extends HandlerInterceptorAdapter{
	@Autowired
	userService uService;
	
	//prehandle(): 컨트롤러보다 먼저 수행되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		//session객체 가져옴
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("login");
		userVO uvo;
		
		if(obj == null) { //로그인 세션 없는경우
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null) { //이전에 생성한 쿠키가 존재하는 경우
				String sessionId = loginCookie.getValue();
				uvo = uService.checkUserSessionKey(sessionId);
				if(uvo != null) {	//세션아이디를 가지고 있는 사용자가 존재하는 경우
					session.setAttribute("login", uvo);
					System.out.println("interceptor uvo입니다" +uvo);
					return true;
				}
			}
			//로그인도 안되어있고 쿠키도 존재하지않는 경우
			response.sendRedirect("/users/userlogin");
			System.out.println("interceptor 후 로그인");
			return false; //컨트롤러 요청으로 가지 않도록 false로 반환
		}
		//preHandler return으로 컨트롤러 요청 url로 들어감
		System.out.println("interceptor 통과");
		return true;
	}
	//컨트롤러가 수행되고 화면이 보여지기 전에 수행되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
