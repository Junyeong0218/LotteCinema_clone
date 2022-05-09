package com.LotteCinema.web.dto.auth;

import java.time.LocalDateTime;

import org.mindrot.jbcrypt.BCrypt;

import com.LotteCinema.web.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data

public class NotMemberLoginDto {
	private String username;
	private String name;
	private String phone;
	private String birth_date;
	private String password;
	private String role;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	
	public User toNotMemberEntity() {
		role = "NOT_MEMBER";
		username = "tempuser"+1;
		return User.builder()
				.username(username)
				.name(name)
				.phone(phone)
				.birth_date(birth_date)
				.password(BCrypt.hashpw(password, BCrypt.gensalt()))
				.role(role)
				.create_date(create_date)
				.update_date(update_date)
				.build();
	}
}
