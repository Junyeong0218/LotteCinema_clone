package com.LotteCinema.web.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.domain.user.UserRepository;

@Service
public class PrincipalServiceImpl implements PrincipalService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User loadUserByUsername(String username) {
		return userRepository.getUserByUsername(username);
	}
	
//	@Override
//	public boolean psswordCheck(String password, User user) {
//		if(BCrypt.checkpw(password, user.getPassword())) {
//			return true;
//		}else {
//			return false;
//		}
//	}
}
