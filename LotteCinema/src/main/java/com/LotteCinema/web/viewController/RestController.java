package com.LotteCinema.web.viewController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.Service.AuthService;
import com.LotteCinema.web.dto.auth.SignupRequestDto;
import com.LotteCinema.web.validation.Auth.AuthValidation;

@Controller
public class RestController {
	
	@Autowired
	private AuthService authService;
	
	private final String SIGNUP = "/member/join/signup";
	
	@ResponseBody
	@RequestMapping(value = SIGNUP, method = RequestMethod.POST)
	public void signupSubmit(SignupRequestDto signupRequestDto, HttpServletResponse response) throws IOException {
		String nullResult = valueIsNull(signupRequestDto);
		if(nullResult.equals("/member/login")) {
			boolean result = authService.signup(signupRequestDto);
			if(!result) nullResult = "/member/join/signup/error";
			response.sendRedirect(nullResult);
		}else {
			response.sendRedirect(nullResult);
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/member/join/signup/usernameCheck", method = RequestMethod.POST)
	public String usernameCheck(String username) {
		return Integer.toString(authService.usernameCheck(username));
	}
	
	
	public String valueIsNull(SignupRequestDto signupRequestDto) throws UnsupportedEncodingException {
		AuthValidation authValidation = new AuthValidation();
		Map<Boolean, String> usernameIsNull = authValidation.isNull("username", signupRequestDto.getUsername());
		Map<Boolean, String> nameIsNull = authValidation.isNull("name", signupRequestDto.getName());
		Map<Boolean, String> phoneIsNull = authValidation.isNull("phone", signupRequestDto.getPhone());
		Map<Boolean, String> emailIsNull = authValidation.isNull("email", signupRequestDto.getEmail());
		
		if(usernameIsNull != null) {
			return "/member/join/signup/error?msg=" + URLEncoder.encode(usernameIsNull.get(true), "utf-8");
		}
		if(nameIsNull != null) {
			return "/member/join/signup/error?msg=" + URLEncoder.encode(nameIsNull.get(true), "utf-8");
		}
		if(phoneIsNull != null) {
			return "/member/join/signup/error?msg="+URLEncoder.encode(phoneIsNull.get(true),"utf-8");
		}
		if(emailIsNull != null ) {
			return "/member/join/signup/error?msg="+URLEncoder.encode(emailIsNull.get(true),"utf-8");
		}
		return "/member/login";
	}
}
