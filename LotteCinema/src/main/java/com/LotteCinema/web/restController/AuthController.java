package com.LotteCinema.web.restController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.dto.auth.PhoneCertificateDto;
import com.LotteCinema.web.dto.auth.SigninDto;
import com.LotteCinema.web.dto.auth.SignupRequestDto;
import com.LotteCinema.web.service.AuthService;
import com.LotteCinema.web.validation.auth.AuthValidation;

@Controller
public class AuthController {

	@Autowired
	private AuthService authService;

	private final String SIGNUP = "/member/join/signup";
	private final String LOGIN = "/member/login";

	@ResponseBody
	@RequestMapping(value = SIGNUP, method = RequestMethod.POST)
	public String signupSubmit(SignupRequestDto signupRequestDto, HttpServletResponse response, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("phoneUser");
		user.setUsername(signupRequestDto.getUsername());
		user.setPassword(BCrypt.hashpw(signupRequestDto.getPassword(), BCrypt.gensalt()));
		user.setEmail(signupRequestDto.getEmail());
		user.setEmail_assent(signupRequestDto.isEmail_assent());
		user.setSms_assent(signupRequestDto.isSms_assent());
		
		PhoneCertificate phoneCertificate = (PhoneCertificate)session.getAttribute("phoneCertificate");
		String nullResult = valueIsNull(signupRequestDto);
		
		if (nullResult.equals("/member/login")) {
			boolean result = authService.signup(user, phoneCertificate);

			if (!result)
				nullResult = "/member/join/signup/error";
			return nullResult;
		} else {
			return nullResult;
		}
	}

	@ResponseBody
	@RequestMapping(value = "/member/join/signup/usernameCheck", method = RequestMethod.POST)
	public String usernameCheck(String username) {
		return Integer.toString(authService.usernameCheck(username));
	}

	public String valueIsNull(SignupRequestDto signupRequestDto) throws UnsupportedEncodingException {
		AuthValidation authValidation = new AuthValidation();
		Map<Boolean, String> usernameIsNull = authValidation.isNull("username", signupRequestDto.getUsername());
		//Map<Boolean, String> nameIsNull = authValidation.isNull("name", signupRequestDto.getName());
		//Map<Boolean, String> phoneIsNull = authValidation.isNull("phone", signupRequestDto.getPhone());
		Map<Boolean, String> emailIsNull = authValidation.isNull("email", signupRequestDto.getEmail());

		if (usernameIsNull != null) {
			return "/member/join/signup/error?msg=" + URLEncoder.encode(usernameIsNull.get(true), "utf-8");
		}
//		if (nameIsNull != null) { 
//			return "/member/join/signup/error?msg=" + URLEncoder.encode(nameIsNull.get(true), "utf-8"); 
//		}
//		if (phoneIsNull != null) { 
//			return "/member/join/signup/error?msg=" + URLEncoder.encode(phoneIsNull.get(true), "utf-8"); 
//		}
		if (emailIsNull != null) {
			return "/member/join/signup/error?msg=" + URLEncoder.encode(emailIsNull.get(true), "utf-8");
		}
		return "/member/login";
	}

	@ResponseBody
	@RequestMapping(value = LOGIN, method = RequestMethod.POST)
	public String signin(SigninDto signinDto, HttpServletRequest request) {
		User user = authService.loadUserByUsername(signinDto);
		if (user == null) {
			return "false";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "true";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/member/join/phone", method = RequestMethod.POST)
	public String insertPhoneCertificate(PhoneCertificateDto phoneCertificateDto, HttpServletRequest request) {
		request.getSession().setAttribute("phoneCertificate", phoneCertificateDto.toPhoneEntity());
		request.getSession().setAttribute("phoneUser", phoneCertificateDto.toUserEntity());
		return "true";
	}
}
