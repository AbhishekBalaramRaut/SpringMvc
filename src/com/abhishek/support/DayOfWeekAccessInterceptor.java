package com.abhishek.support;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class DayOfWeekAccessInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest req, 
			HttpServletResponse res, Object handler) throws Exception{
		Calendar cal = Calendar.getInstance();
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		
		if(dayOfWeek == 3) {
			res.getWriter().write("The website is closed on Wednesday. Try accessing later");
			return false;
		}
		return true;
	}
}
