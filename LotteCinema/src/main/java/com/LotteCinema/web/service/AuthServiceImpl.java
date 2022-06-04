package com.LotteCinema.web.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.entity.terms.CardTerms;
import com.LotteCinema.web.entity.terms.EmailTerms;
import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.entity.user.User;
import com.LotteCinema.web.repository.AuthRepository;
import com.LotteCinema.web.requestDto.FindIdRequestDto;
import com.LotteCinema.web.requestDto.SigninRequestDto;
import com.LotteCinema.web.requestDto.SignupRequestDto;
import com.LotteCinema.web.domain.user.PhoneCertificate;
import com.LotteCinema.web.domain.user.PhoneCertificateRepository;
import com.LotteCinema.web.domain.user.User;
import com.LotteCinema.web.domain.user.UserRepository;
import com.LotteCinema.web.dto.auth.NotMemberLoginDto;
import com.LotteCinema.web.dto.auth.SigninDto;

@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	private AuthRepository authRepository;

    @Autowired
	private UserRepository userRepository;

	@Autowired
	private PhoneCertificateRepository phoneCertificateRepository;
	
	@Override
	public boolean checkUsername(String username) {
		return authRepository.checkUsername(username) > 0 ? true : false;
	}
	
	@Override
	public boolean checkPhone(String phone) {
		return authRepository.checkPhone(phone) > 0 ? true : false;
	}
	
	@Override
	public boolean checkEmail(String email) {
		return authRepository.checkEmail(email) > 0 ? true : false;
	}
	
	@Override
	public boolean checkCardNumber(String card_number) {
		return authRepository.checkCardNumber(card_number) > 0 ? true : false;
	}
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		int result = 0;
		if(signupRequestDto.getTerms() instanceof PhoneTerms) {
			result = authRepository.signupPhone(signupRequestDto);
			PhoneTerms terms = ((PhoneTerms)signupRequestDto.getTerms());
			terms.setUser_id(signupRequestDto.getId());
			result += authRepository.insertPhoneTerms(terms);
			System.out.println(signupRequestDto);
			
		} else if(signupRequestDto.getTerms() instanceof CardTerms) {
			result = authRepository.signupCard(signupRequestDto);
			CardTerms terms = (CardTerms) signupRequestDto.getTerms();
			terms.setUser_id(signupRequestDto.getId());
			result += authRepository.insertCardTerms(terms);
			
		} else {
			result = authRepository.signupEmail(signupRequestDto);
			EmailTerms terms = (EmailTerms) signupRequestDto.getTerms();
			terms.setEmail(signupRequestDto.getEmail());
			terms.setUser_id(signupRequestDto.getId());
			result += authRepository.insertEmailTerms(terms);
		}
		
		result += authRepository.insertMarketingFlags(signupRequestDto);
		return result > 0 ? true : false;
	}
	
	@Override
	public User signin(SigninRequestDto signinRequestDto) {
		String db_password = authRepository.selectPassword(signinRequestDto);
		if(db_password == null || db_password == "") return null;
		
		boolean isSame = BCrypt.checkpw(signinRequestDto.getPassword(), db_password);
		
		if(isSame) {
			User user = authRepository.selectUserByUsername(signinRequestDto.getUsername());

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
	
	@Override
	public String selectUsernameByDto(FindIdRequestDto findIdRequestDto) {
		if(findIdRequestDto.getEmail() == null) {
			return authRepository.selectUsernameByPhone(findIdRequestDto);
		} else {
			return authRepository.selectUsernameByEmail(findIdRequestDto);
		}
	}
	
}
