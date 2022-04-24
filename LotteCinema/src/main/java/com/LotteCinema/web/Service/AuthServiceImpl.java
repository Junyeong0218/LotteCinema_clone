package com.LotteCinema.web.Service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.domain.user.SigninDto;
import com.LotteCinema.domain.user.User;
import com.LotteCinema.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

@Service
public class AuthServiceImpl implements AuthService {
	@Autowired
	private UserRepository userRepository;
	
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		int result = userRepository.signup(signupRequestDto.toEntity());
		 return result != 0;
		
	}
	
	@Override
	public int usernameCheck(String username) {
		return userRepository.usernameCheck(username);
	}
	
	@Override
	public User loadUserByUsername(SigninDto signinDto) {
		String password = userRepository.selectPassword(signinDto.getUsername());
		if(BCrypt.checkpw(signinDto.getPassword(), password)) {
			return userRepository.loadUserByUsername(signinDto.getUsername());
		}else {
			return null;
		}
	}
}
