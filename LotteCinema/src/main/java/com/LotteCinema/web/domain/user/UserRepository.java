package com.LotteCinema.web.domain.user;

public interface UserRepository {
	public int checkUsername(String username);
	public int signup(User user);
}
