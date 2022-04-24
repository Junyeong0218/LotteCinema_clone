package com.LotteCinema.auth;

import com.LotteCinema.domain.user.User;

public interface PrincipalService {
	public boolean passwordCheck(String password, User user);
}
