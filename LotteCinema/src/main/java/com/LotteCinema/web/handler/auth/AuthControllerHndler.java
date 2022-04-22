package com.LotteCinema.web.handler.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.util.auth.AuthResponseScript;

@Controller
public class AuthControllerHndler {
	
	@ResponseBody
	@RequestMapping(value="/member/join/signup/error", method=RequestMethod.GET, produces = "text/html;charset=utf-8")
	public String signupValidCheck(String msg) { 
		return new AuthResponseScript().signupValidScript(msg);
	}
}
