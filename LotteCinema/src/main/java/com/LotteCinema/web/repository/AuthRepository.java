package com.LotteCinema.web.repository;

import org.apache.ibatis.annotations.Mapper;

import com.LotteCinema.web.entity.terms.CardTerms;
import com.LotteCinema.web.entity.terms.EmailTerms;
import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.entity.user.User;
import com.LotteCinema.web.requestDto.FindIdRequestDto;
import com.LotteCinema.web.requestDto.SigninRequestDto;
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
	public int insertCardTerms(CardTerms cardTerms);
	public int insertEmailTerms(EmailTerms emailTerms);
	
	public int insertMarketingFlags(SignupRequestDto signupRequestDto);
	
	public String selectPassword(SigninRequestDto singinRequestDto);
	
	public User selectUserByUsername(String username);
	
	public String selectUsernameByPhone(FindIdRequestDto findIdRequestDto);
	public String selectUsernameByEmail(FindIdRequestDto findIdRequestDto);
	
}
