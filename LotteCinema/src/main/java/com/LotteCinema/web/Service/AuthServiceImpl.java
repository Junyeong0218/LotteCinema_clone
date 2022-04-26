package com.LotteCinema.web.Service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.domain.user.PhoneCertificateRepository;
import com.LotteCinema.domain.user.User;
import com.LotteCinema.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.PhoneCertificateDto;
import com.LotteCinema.web.dto.auth.SigninDto;
import com.LotteCinema.web.dto.auth.SignupRequestDto;

@Service
public class AuthServiceImpl implements AuthService {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PhoneCertificateRepository phoneCertificateRepository;
	
	
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
	
	@Override
	public boolean insertPhoneCertificate(PhoneCertificateDto phoneCertificateDto) {
		int result = phoneCertificateRepository.insertPhoneCertificate(phoneCertificateDto.toEntity()); 
		return result != 0;
	}
}
