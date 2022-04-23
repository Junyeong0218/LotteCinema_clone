package com.LotteCinema.web.Service;

import javax.servlet.http.HttpServletRequest;

import com.LotteCinema.web.dto.auth.SignupRequestDto;

public interface AuthService {
	public boolean signup(SignupRequestDto signupRequestDto);
	public int usernameCheck(String username);
}
