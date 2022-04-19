package com.LotteCinema.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value ="/member/cardcertificate", method = RequestMethod.GET)
	public String cardCertificate() {
		return "Member/cardcertificate";
	}
	
	@RequestMapping(value ="/member/certificate", method = RequestMethod.GET)
	public String certificate() {
		return "Member/certificate";
	}
	
	@RequestMapping(value ="/join" ,method = RequestMethod.GET)
	public String join() {
		return "Member/join";
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public String login() {
		return "Member/login";
	}
}
