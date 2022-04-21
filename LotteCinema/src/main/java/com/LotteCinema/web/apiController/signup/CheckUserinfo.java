package com.LotteCinema.web.apiController.signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.service.AuthService;

@Controller
public class CheckUserinfo {
	
	@Autowired
	private AuthService authService;

	@RequestMapping(value = "/member/join/check-username")
	@ResponseBody
	public boolean checkUsername(String username) {
		return authService.checkUsername(username);
	}
	
	@RequestMapping(value = "/member/join/check-email")
	@ResponseBody
	public boolean checkEmail(String email) {
		return authService.checkEmail(email);
	}
	
	@RequestMapping(value = "/member/join/check-phone")
	@ResponseBody
	public boolean checkPhone(String phone) {
		return authService.checkEmail(phone);
	}
	
	@RequestMapping(value = "/member/join/check-card-number")
	@ResponseBody
	public boolean checkCardNumber(String cardNumber) {
		return authService.checkCardNumber(cardNumber);
	}
}
