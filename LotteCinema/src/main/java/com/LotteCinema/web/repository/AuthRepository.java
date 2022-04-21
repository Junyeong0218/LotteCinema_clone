package com.LotteCinema.web.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.LotteCinema.web.requestDto.SignupRequestDto;

@Mapper
public interface AuthRepository {

	public int checkUsername(String username);
	public int checkPhone(String phone);
	public int checkEmail(String email);
	public int checkCardNumber(String cardNumber);
	
	public int signupPhone(@Param("dto") SignupRequestDto signupRequestDto);
	public int signupCard(@Param("dto") SignupRequestDto signupRequestDto);
	public int signupEmail(@Param("dto") SignupRequestDto signupRequestDto);
}
