package com.LotteCinema.web.service;

import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.dto.auth.SigninDto;

public interface AuthService {
	public boolean signup(User user, PhoneCertificate phoneCertificate);
	public int usernameCheck(String username);
	public User loadUserByUsername(SigninDto signinDto);
}
