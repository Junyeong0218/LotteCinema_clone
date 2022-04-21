package com.LotteCinema.web.apiController.signup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.entity.terms.Terms;
import com.LotteCinema.web.requestDto.SignupRequestDto;

@Controller
public class VerifyFlags {

	@RequestMapping(value = "/member/join/phone_certificate", method = RequestMethod.POST)
	@ResponseBody
	public boolean getPhoneCertificate(SignupRequestDto dto, HttpServletRequest request) {
		dto.setTerms(Terms.asPhone(request.getParameter("privacy_flag").equals("true") ? true : false,
																request.getParameter("unique_flag").equals("true") ? true : false,
																request.getParameter("service_flag").equals("true") ? true : false,
																request.getParameter("agency_flag").equals("true") ? true : false));
		
		System.out.println(dto);
		if(dto.isValid()) {
			HttpSession session = request.getSession(); 
			session.setAttribute("signupRequestDto", dto);
			session.setAttribute("category", "phone_signup");
			return true;
		} else {
			return false;
		}
	}
}
