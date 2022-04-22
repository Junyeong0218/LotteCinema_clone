package com.LotteCinema.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.LotteCinema.web.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

public class AuthServiceImpl implements AuthService{
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public boolean checkUsername(String username) {
		return userRepository.checkUsername(username) != 0;
	}
	
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		int result = userRepository.signup(signupRequestDto.toEntity());
		return result != 0;
	}
}
