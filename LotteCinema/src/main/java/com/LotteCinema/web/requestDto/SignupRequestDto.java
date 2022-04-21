package com.LotteCinema.web.requestDto;

import com.LotteCinema.web.entity.terms.Terms;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SignupRequestDto {

	private String username;
	private String password;
	private String name;
	private String birthday;
	private int gender;
	private String telecom;
	private String first_number;
	private String middle_number;
	private String last_number;
	private String email;
	private String address;
	private Terms terms;
	
}
