package com.LotteCinema.web.apiController.signup;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.service.AuthService;

@Controller
public class CheckUserinfo {
	
	@Autowired
	private AuthService authService;

	@RequestMapping(value = "/member/join/check-username", method = RequestMethod.POST)
	@ResponseBody
	public boolean checkUsername(String username, HttpServletRequest request) {
		boolean result = authService.checkUsername(username);
		if(request.getHeader("Referer").contains("find_password")) {
			request.getSession().setAttribute("username", username);
		}
		return result;
	}
	
	@RequestMapping(value = "/member/join/check-email", method = RequestMethod.POST)
	@ResponseBody
	public boolean checkEmail(String email) {
		return authService.checkEmail(email);
	}
	
	@RequestMapping(value = "/member/join/check-phone", method = RequestMethod.POST)
	@ResponseBody
	public boolean checkPhone(String phone) {
		return authService.checkPhone(phone);
	}
	
	@RequestMapping(value = "/member/join/check-card-number", method = RequestMethod.POST)
	@ResponseBody
	public boolean checkCardNumber(String card_number) {
		return authService.checkCardNumber(card_number);
	}
}
