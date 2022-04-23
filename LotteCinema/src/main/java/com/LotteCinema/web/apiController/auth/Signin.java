package com.LotteCinema.web.apiController.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.entity.user.User;
import com.LotteCinema.web.requestDto.SigninRequestDto;
import com.LotteCinema.web.service.AuthService;

@Controller
public class Signin {
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value ="/member/join/signin", method = RequestMethod.POST)
	@ResponseBody
	public boolean signin(SigninRequestDto dto, HttpServletRequest request) {
		System.out.println(dto);
		User user = authService.signin(dto);
		if(user == null) {
			return false;
		} else {
			HttpSession session  = request.getSession();
			user.setPassword(null);
			session.setAttribute("user", user);
			return true;
		}
	}
}
