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
		dto.setTerms(Terms.asPhone(dto.getTelecom(),
																dto.getPhone(),
																request.getParameter("privacy_flag").equals("true") ? true : false,
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
	
	@RequestMapping(value = "/member/join/email_certificate", method = RequestMethod.POST)
	@ResponseBody
	public boolean getEmailCertificate(SignupRequestDto dto, HttpServletRequest request) {
		dto.setTerms(Terms.asEmail(request.getParameter("l_point_flag").equals("true") ? true : false,
															 request.getParameter("private_necessary").equals("true") ? true : false,
															 request.getParameter("private_optional").equals("true") ? true : false,
															 request.getParameter("third_party_necessary").equals("true") ? true : false,
															 request.getParameter("third_party_optional").equals("true") ? true : false,
															 request.getParameter("subsidiary_flag").equals("true") ? true : false,
															 request.getParameter("culture_necessary").equals("true") ? true : false,
															 request.getParameter("culture_optional").equals("true") ? true : false));
		System.out.println(dto);
		if(dto.isValid()) {
			HttpSession session = request.getSession(); 
			session.setAttribute("signupRequestDto", dto);
			session.setAttribute("category", "email_signup");
			return true;
		} else {
			return false;
		}
	}
	
	@RequestMapping(value = "/member/join/card_certificate", method = RequestMethod.POST)
	@ResponseBody
	public boolean getCardCertificate(SignupRequestDto dto, HttpServletRequest request) {
		dto.setTerms(Terms.asCard(dto.getCard_company(),
															 dto.getCard_number(),
															 Integer.parseInt(request.getParameter("certificate_flag"))));
		
		System.out.println(dto);
		System.out.println(dto.isValid());
		if(dto.isValid()) {
			HttpSession session = request.getSession(); 
			session.setAttribute("signupRequestDto", dto);
			session.setAttribute("category", "card_signup");
			return true;
		} else {
			return false;
		}
	}
}
