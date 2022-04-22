package com.LotteCinema.web.repository;

import org.apache.ibatis.annotations.Mapper;

import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.requestDto.SignupRequestDto;

@Mapper
public interface AuthRepository {

	public int checkUsername(String username);
	public int checkPhone(String phone);
	public int checkEmail(String email);
	public int checkCardNumber(String cardNumber);
	
	public int signupPhone(SignupRequestDto signupRequestDto);
	public int signupCard(SignupRequestDto signupRequestDto);
	public int signupEmail(SignupRequestDto signupRequestDto);
	
	public int insertPhoneTerms(PhoneTerms phoneTerms);
	
	public int insertMarketingFlags(SignupRequestDto signupRequestDto);
}
