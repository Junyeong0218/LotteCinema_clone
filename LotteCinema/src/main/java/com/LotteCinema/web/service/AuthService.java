package com.LotteCinema.web.service;

import com.LotteCinema.web.entity.user.User;
import com.LotteCinema.web.requestDto.FindIdRequestDto;
import com.LotteCinema.web.requestDto.SigninRequestDto;
import com.LotteCinema.web.requestDto.SignupRequestDto;
import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.dto.auth.NotMemberLoginDto;
import com.LotteCinema.web.dto.auth.SigninDto;

public interface AuthService {

	public boolean checkUsername(String username);
	public boolean checkPhone(String phone);
	public boolean checkEmail(String email);
	public boolean checkCardNumber(String cardNumber);
	
	public boolean signup(SignupRequestDto signupRequestDto);
	
	public User signin(SigninRequestDto signinRequestDto);
	
	public String selectUsernameByDto(FindIdRequestDto findIdRequestDto);

	public boolean signup(User user, PhoneCertificate phoneCertificate);
	public int usernameCheck(String username);
	public User loadUserByUsername(SigninDto signinDto);
	public boolean checkPhone(String phone);
	public User notMemberLogin(NotMemberLoginDto notMemberLoginDto);
}
