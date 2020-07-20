package springbootexamples.customercatalogue.interceptor;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggingInterceptor extends HandlerInterceptorAdapter{
	
	private Logger logger = LoggerFactory.getLogger(LoggingInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//get all cookies
		//log session-id
		//log request paths
		
		
		String sessionId = null;
		if(null!=request.getCookies()) {
			for(Cookie cookie : request.getCookies()) {
				if("JSESSIONID".contentEquals(cookie.getName())) {
					 sessionId = cookie.getValue();
					
				}
			}
		}
		
		System.out.println("Incoming request data: session id - "+sessionId
				+ "  at "+new Date()+" for uri "+request.getRequestURL());
		
		logger.info("Incoming request data: session id - "+sessionId
				+ "  at "+new Date()+" for uri "+request.getRequestURL());
		
		return true;
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("Back into LogginInterceptor for postHandling");
	}
}
