package com.LotteCinema.web.requestDto;

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
public class SigninRequestDto {

	private int id;
	private String username;
	private String password;
	
	public boolean isValid() {
		return !username.isEmpty() && username.length() > 5 && username.length() < 16 &&
					 !password.isEmpty() && password.length() > 7 && password.length() < 17;
	}
}
