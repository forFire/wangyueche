package com.sichuang.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sichuang.util.ConfUtil;
import com.sichuang.util.Constants;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


/**
 * Session拦截器
 * 
 * @author wujing
 */
public class SessionInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		if (session == null) {
			response.sendRedirect(ConfUtil.getProperty("redirectUrl"));
			return false;
		} else {
			Object obj = session.getAttribute(Constants.Token.RONCOO);
			if (obj == null) {
				response.sendRedirect(ConfUtil.getProperty("redirectUrl"));
				return false;
			} else {
				return true;
			}
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

	}

}
