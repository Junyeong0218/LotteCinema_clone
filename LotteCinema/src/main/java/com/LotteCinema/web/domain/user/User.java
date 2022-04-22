package com.LotteCinema.web.domain.user;

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
	private String name;
	private String phone;
	private String email;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
