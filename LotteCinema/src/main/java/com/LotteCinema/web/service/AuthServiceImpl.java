package com.LotteCinema.web.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.PhoneCertificateRepository;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.SigninDto;

@Service
public class AuthServiceImpl implements AuthService {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PhoneCertificateRepository phoneCertificateRepository;
	
	
	@Override
	public boolean signup(User user, PhoneCertificate phoneCertificate) {
		int result = userRepository.signup(user);
		System.out.println(user);
		if(result != 0) {
			phoneCertificate.setUsercode(user.getUsercode());
			System.out.println(phoneCertificate);
			result = phoneCertificateRepository.insertPhoneCertificate(phoneCertificate);
		}
		 return result != 0;
	}
	
	@Override
	public int usernameCheck(String username) {
		return userRepository.usernameCheck(username);
	}
	
	@Override
	public User loadUserByUsername(SigninDto signinDto) {
		String password = userRepository.selectPassword(signinDto.getUsername());
		System.out.println(password);
		System.out.println(signinDto.getPassword());
		System.out.println(signinDto.getUsername());
		if(BCrypt.checkpw(signinDto.getPassword(), password)) {
			return userRepository.loadUserByUsername(signinDto.getUsername());
		}else {
			return null;
		}
	}
	
}