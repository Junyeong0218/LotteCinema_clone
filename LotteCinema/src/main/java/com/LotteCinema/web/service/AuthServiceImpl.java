package com.LotteCinema.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LotteCinema.web.entity.terms.CardTerms;
import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.repository.AuthRepository;
import com.LotteCinema.web.requestDto.SignupRequestDto;

@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	private AuthRepository authRepository;
	
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
	public boolean checkCardNumber(String cardNumber) {
		return authRepository.checkCardNumber(cardNumber) > 0 ? true : false;
	}
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		if(signupRequestDto.getTerms() instanceof PhoneTerms) {
			int result = authRepository.signupPhone(signupRequestDto);
			PhoneTerms terms = ((PhoneTerms)signupRequestDto.getTerms());
			terms.setUser_id(signupRequestDto.getId());
			result += authRepository.insertPhoneTerms(terms);
			result += authRepository.insertMarketingFlags(signupRequestDto);
			System.out.println(signupRequestDto);
			return result > 0 ? true : false;
		} else if(signupRequestDto.getTerms() instanceof CardTerms) {
			return authRepository.signupCard(signupRequestDto) > 0 ? true : false;
		} else {
			return authRepository.signupEmail(signupRequestDto) > 0 ? true : false;
		}
	}
}
