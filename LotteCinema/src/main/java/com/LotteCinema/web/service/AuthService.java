package com.LotteCinema.web.service;

import com.LotteCinema.web.entity.user.User;
import com.LotteCinema.web.requestDto.SigninRequestDto;
import com.LotteCinema.web.requestDto.SignupRequestDto;

public interface AuthService {

	public boolean checkUsername(String username);
	public boolean checkPhone(String phone);
	public boolean checkEmail(String email);
	public boolean checkCardNumber(String cardNumber);
	
	public boolean signup(SignupRequestDto signupRequestDto);
	
	public User signin(SigninRequestDto signinRequestDto);
}
