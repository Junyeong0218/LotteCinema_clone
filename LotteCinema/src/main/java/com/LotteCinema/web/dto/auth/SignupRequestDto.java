package com.LotteCinema.web.dto.auth;

import com.LotteCinema.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class SignupRequestDto {
	private String username;
	private String name;
	private String phone;
	private String email;
	private boolean email_assent;
	private boolean sms_assent;
	
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.name(name)
				.phone(phone)
				.email(email)
				.email_assent(email_assent)
				.sms_assent(sms_assent)
				.build();
	}
}
