package com.LotteCinema.web.dto.auth;

import com.LotteCinema.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SigninDto {

	private String username;
	private String password;
	
	public User toEntity() {
		return User.builder()
					.username(username)
					.password(password)
					.build();
	}
}
