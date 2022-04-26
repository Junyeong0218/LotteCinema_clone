package com.LotteCinema.web.auth;

import com.LotteCinema.web.domain.user.User;

public interface PrincipalService {
	public User loadUserByUsername(String username);
//	public boolean psswordCheck(String password, User user);
}
