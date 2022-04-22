package com.LotteCinema.domain.user;

public interface UserRepository {
	public int signup(User user);
	public int usernameCheck(String username);
	public int emailCheck(String email);
}
