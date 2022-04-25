package com.LotteCinema.web.viewController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.LotteCinema.web.requestDto.SignupRequestDto;

@Controller
public class MemberController {

	private final String INDEX = "/index";
	private final String JOIN = "/member/join";
	private final String CARD_CERTIFICATE = "/member/join/card_certificate";
	private final String EMAIL_CERTIFICATE = "/member/join/email_certificate";
	private final String PHONE_CERTIFICATE = "/member/join/phone_certificate";
	private final String SIGNUP = "/member/join/signup";
	private final String LOGIN = "/member/login";
	private final String COMPLETE = "/member/join/complete";
	private final String LOGOUT = "/member/logout";
	private final String FIND_ID = "/member/join/find_id";
	private final String FIND_ID_RESULT = "/member/join/find_id_result";
	private final String FIND_PASSWORD = "/member/join/find_password";
	private final String FIND_PASSWORD_CERTIFICATE = "/member/join/find_password_certificate";
	
	@RequestMapping(value = JOIN, method = RequestMethod.GET)
	public String join() {
		return JOIN;
	}
	
	@RequestMapping(value = CARD_CERTIFICATE, method = RequestMethod.GET)
	public String cardCertificate() {
		return CARD_CERTIFICATE;
	}
	
	@RequestMapping(value = EMAIL_CERTIFICATE, method = RequestMethod.GET)
	public String emailCertificate() {
		return EMAIL_CERTIFICATE;
	}
	
	@RequestMapping(value = PHONE_CERTIFICATE, method = RequestMethod.GET)
	public String phoneCertificate() {
		return PHONE_CERTIFICATE;
	}
	
	@RequestMapping(value = SIGNUP, method = RequestMethod.GET)
	public String signup(HttpServletRequest request) {
		System.out.println("get");
		System.out.println((SignupRequestDto) request.getSession().getAttribute("signupRequestDto"));
		return SIGNUP;
	}
	
	@RequestMapping(value = LOGIN, method = RequestMethod.GET)
	public String login() {
		return LOGIN;
	}
	
	@RequestMapping(value = COMPLETE, method = RequestMethod.GET)
	public String complete() {
		return COMPLETE;
	}
	
	@RequestMapping(value = LOGOUT, method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return INDEX;
	}
	
	@RequestMapping(value = FIND_ID, method = RequestMethod.GET)
	public String findId() {
		return FIND_ID;
	}
	
	@RequestMapping(value = FIND_ID_RESULT, method = RequestMethod.GET)
	public String findIdResult() {
		return FIND_ID_RESULT;
	}
	
	@RequestMapping(value = FIND_PASSWORD, method = RequestMethod.GET)
	public String findPassword() {
		return FIND_PASSWORD;
	}
	
	@RequestMapping(value = FIND_PASSWORD_CERTIFICATE, method = RequestMethod.GET)
	public String findPasswordCertificate() {
		return FIND_PASSWORD_CERTIFICATE;
	}
}
