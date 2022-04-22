package com.LotteCinema.web.dto.auth;

import com.LotteCinema.web.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SignupRequestDto {
	private String username;
	private String name;
	private String phone;
	private	String email;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.name(name)
				.phone(phone)
				.email(email)
				.build();
	}
}
