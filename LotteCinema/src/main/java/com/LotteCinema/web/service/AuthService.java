package com.LotteCinema.web.service;

import com.LotteCinema.web.dto.auth.SignupRequestDto;

public interface AuthService {
	public boolean checkUsername(String username);
	public boolean signup(SignupRequestDto signupRequestDto);
}
