package com.finalproject.soscanner.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.finalproject.soscanner.vo.UserVO;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		System.out.println("Interceptor : PreHandle");

		// Session userid check
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");

		// Login false
		if (user == null) {
//			System.out.println("Interceptor : Session Check Fail");
//			System.out.println(userId);
			// main page 로 이동
			response.sendRedirect("/");
			return false;
		}
		// Login true
		else {
//			System.out.println(userId);
//			System.out.println("Interceptor : Session Check true");
			return true;

		}
	}
}
