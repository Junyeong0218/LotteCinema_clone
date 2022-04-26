package com.LotteCinema.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.auth.PrincipalService;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

@Service
public class AuthServiceImpl implements AuthService{
	@Autowired
	private UserRepository userRepository;
	
	private PrincipalService principalService;
	
	@Override
	public boolean checkUsername(String username) {
		return userRepository.checkUsername(username) != 0;
	}
	
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		int result = userRepository.signup(signupRequestDto.toEntity());
		return result != 0;
	}
	
//	@Override
//	public User signin(String username, String password) {
//		User user = principalService.loadUserByUsername(username);
//		if(user != null) {
//			if(!principalService.passwordCheck(password, user)) {
//				return null;
//			}
//		}
//		return user;
//	}
}
