package com.LotteCinema.web.apiController.signup;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.LotteCinema.web.requestDto.SignupRequestDto;

@Controller
public class VerifyFlags {

	@RequestMapping(value = "/member/join/phone_certificate", method = RequestMethod.POST)
	public String getPhoneCertificate(SignupRequestDto dto, HttpServletRequest request) {
		System.out.println(dto);
		
		return "/member/join/phone_certificate";
	}
}
