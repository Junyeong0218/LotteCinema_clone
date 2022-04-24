package com.LotteCinema.domain.user;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
	private int usercode;
	private String username;
	private String password;
	private String name;
	private String phone;
	private String email;
	private boolean email_assent;
	private boolean sms_assent;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
