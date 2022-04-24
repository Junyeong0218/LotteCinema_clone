package com.LotteCinema.auth;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.LotteCinema.domain.user.User;
@Service
public class PrincipalServiceImpl implements PrincipalService {
	
	@Override
	public boolean passwordCheck(String password, User user) {
		if(BCrypt.checkpw(password, user.getPassword())) {
			return true;
		}else {
			return false;
		}
	}
}
