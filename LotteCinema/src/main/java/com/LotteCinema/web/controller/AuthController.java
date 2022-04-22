package com.LotteCinema.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.dto.auth.SignupRequestDto;
import com.LotteCinema.web.dto.util.auth.AuthResponseScript;
import com.LotteCinema.web.service.AuthService;

public class AuthController {
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value = "/auth/signin", method = RequestMethod.GET)
	public String getSignin() {
		return "auth/signin";
	}
	
	
	@RequestMapping(value = "/auth/signup", method = RequestMethod.GET)
	public String getSignup() {
		return "/auth/signup";
	}
	
	@ResponseBody
	@RequestMapping(value = "/auth/signup", method = RequestMethod.POST, produces = "text/html:charset=utf-8")
	public String signupSubmit(SignupRequestDto signupRequestDto) {
		boolean result = authService.signup(signupRequestDto);
		AuthResponseScript script = new AuthResponseScript();
		return script.signupScript(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/auth/username/check", method = RequestMethod.GET)
	public String usernameCheck(String username) {
		return Boolean.toString(authService.checkUsername(username));
	}
	
	
}
