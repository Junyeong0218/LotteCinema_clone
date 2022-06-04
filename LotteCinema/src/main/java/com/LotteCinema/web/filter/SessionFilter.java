package com.LotteCinema.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LotteCinema.web.domain.user.User;

public class SessionFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException { }
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		String uri = req.getRequestURI();
		String[] words = uri.split("/");
		if(words.length == 0) {
			chain.doFilter(request, response);
			return;
		}
		if(words[1].equals("member")) {
			if(uri.contains("logout")) {
				chain.doFilter(request, response);
				return;
			}
			if(user != null) {
				resp.sendRedirect("/");
				return;
			}
		}
		if(words[1].equals("membership")) {
			if(user.getRole().equals("NOT_MEMBER")){
				resp.sendRedirect("/");
				return;
			} else {
				chain.doFilter(request, response);
				return;
			}
		}
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() { }
}
