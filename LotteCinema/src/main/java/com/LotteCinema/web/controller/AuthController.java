package com.LotteCinema.web.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.dto.auth.SignupRequestDto;
import com.LotteCinema.web.service.AuthService;
import com.LotteCinema.web.util.auth.AuthResponseScript;
import com.LotteCinema.web.validation.auth.AuthValidation;

@Controller
public class AuthController {
	
	@Autowired
	private AuthService authService;
	
	
//	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
//	public String getSigninsubmit(String username, String password, HttpServletRequest request) throws UnsupportedEncodingException{
//		AuthValidation authValidation = new AuthValidation();
//		
//		Map<Boolean, String>usernameIsNull = authValidation.isNull("usernaem", password);
//		Map<Boolean, String>passwordIsNull = authValidation.isNull("password", password);
//		
//		if(usernameIsNull != null) {
//			return "redirect: /web/member/login/error?msg=" + URLEncoder.encode(usernameIsNull.get(true), "UTF-8");
//		}
//		if(passwordIsNull != null) {
//			return "redirect: /web/member/login/error?msg=" + URLEncoder.encode(passwordIsNull.get(true), "UTF-8");
//		}
//		
//		User user = authService.si
//	}
	
	
	@ResponseBody
	@RequestMapping(value = "/member/join/signup", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String signupSubmit(SignupRequestDto signupRequestDto) {
		boolean result = authService.signup(signupRequestDto);
		AuthResponseScript script = new AuthResponseScript();
		return script.signupScript(result);
		 
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/join/username/check", method = RequestMethod.GET)
	public String usernameCheck(String username) { 
		return Boolean.toString(authService.checkUsername(username));
	}
	
	
}
