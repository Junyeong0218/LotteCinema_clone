package com.LotteCinema.web.Service;

import com.LotteCinema.domain.user.SigninDto;
import com.LotteCinema.domain.user.User;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

public interface AuthService {
	public boolean signup(SignupRequestDto signupRequestDto);
	public int usernameCheck(String username);
	public User loadUserByUsername(SigninDto signinDto);
}
