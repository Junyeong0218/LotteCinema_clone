package com.LotteCinema.web.entity.user;

import java.time.LocalDateTime;

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
public class User {

	private int id;
	private String username;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String card_number;
	private int gender;
	private String birthday;
	private String address;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	private boolean delete_flag;
	private LocalDateTime delete_date;
}
