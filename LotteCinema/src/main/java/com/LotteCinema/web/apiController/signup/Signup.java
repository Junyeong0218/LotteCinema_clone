package com.LotteCinema.web.apiController.signup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.entity.terms.EmailTerms;
import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.requestDto.SignupRequestDto;
import com.LotteCinema.web.service.AuthService;

@Controller
public class Signup {
	
	@Autowired
	private AuthService authService;

	@RequestMapping(value = "/member/join/signup", method = RequestMethod.POST)
	@ResponseBody
	public boolean signup(SignupRequestDto dto, HttpServletRequest request) {
		HttpSession session = request.getSession();
		SignupRequestDto signupRequestDto = (SignupRequestDto) session.getAttribute("signupRequestDto");
		if(signupRequestDto.getTerms() instanceof PhoneTerms) {
			signupRequestDto.setBirthday(dto.getBirthday());
		} else {
			signupRequestDto.setPhone(dto.getPhone());
			signupRequestDto.setName(dto.getName());
		}
		signupRequestDto.setUsername(dto.getUsername());
		signupRequestDto.setPassword(dto.getPassword());
		signupRequestDto.setEmail(dto.getEmail());
		signupRequestDto.setAddress(dto.getAddress());
		signupRequestDto.setEmail_flag(dto.isEmail_flag());
		signupRequestDto.setSms_flag(dto.isSms_flag());
		signupRequestDto.setPassword(BCrypt.hashpw(signupRequestDto.getPassword(), BCrypt.gensalt()));
		System.out.println(signupRequestDto.getPassword());
		
		boolean result = authService.signup(signupRequestDto);
		
		if(result == true) {
			session.setAttribute("signupRequestDto", null);
			session.setAttribute("category", null);
			session.setAttribute("name", signupRequestDto.getName());
		}
		return result;
	}
}
