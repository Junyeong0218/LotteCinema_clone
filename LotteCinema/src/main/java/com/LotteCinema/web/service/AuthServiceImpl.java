package com.LotteCinema.web.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.PhoneCertificateRepository;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.NotMemberLoginDto;
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
		if (result != 0) {
			phoneCertificate.setUsercode(user.getUsercode());
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
		if (BCrypt.checkpw(signinDto.getPassword(), password)) {
			return userRepository.loadUserByUsername(signinDto.getUsername());
		} else {
			return null;
		}
	}
	
	@Override
	public boolean checkPhone(String phone) {
		return userRepository.selectPhone(phone)!=0;
	}

	@Override
	public User notMemberLogin(NotMemberLoginDto notMemberLoginDto) {
		notMemberLoginDto.setRole("NOT_MEMBER");
		if (userRepository.isUsername(notMemberLoginDto.getRole()) != 0) {
			String username = userRepository.selectUsername(notMemberLoginDto.getRole());
			String result = username.substring(0, 8);
			int num = Integer.parseInt(username.substring(8, username.length()));
			username = result + (++num);
			notMemberLoginDto.setUsername(username);
		} else {
			notMemberLoginDto.setUsername("tempuser1");
		}
		if (userRepository.notMemberSignup(notMemberLoginDto.toNotMemberEntity()) != 0) {
			User user = userRepository.loadUserByPhone(notMemberLoginDto.getPhone());
			return user;
		} else {
			return null;
		}
	}
}