package com.LotteCinema.web.service;

import org.springframework.stereotype.Service;

import com.LotteCinema.web.requestDto.SignupRequestDto;

@Service
public interface AuthService {

	public boolean checkUsername(String username);
	public boolean checkPhone(String phone);
	public boolean checkEmail(String email);
	public boolean checkCardNumber(String cardNumber);
	
	public boolean signup(SignupRequestDto signupRequestDto);
}
