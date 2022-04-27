package com.LotteCinema.web.Service;

import com.LotteCinema.domain.user.PhoneCertificate;
import com.LotteCinema.domain.user.User;
import com.LotteCinema.web.dto.auth.PhoneCertificateDto;
import com.LotteCinema.web.dto.auth.SigninDto;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

public interface AuthService {
	public boolean signup(User user, PhoneCertificate phoneCertificate);
	public int usernameCheck(String username);
	public User loadUserByUsername(SigninDto signinDto);
}
