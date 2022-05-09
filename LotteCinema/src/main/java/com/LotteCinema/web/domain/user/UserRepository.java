package com.LotteCinema.web.domain.user;

public interface UserRepository {
	public int signup(User user);
	public int usernameCheck(String username);
	public int emailCheck(String email);
	public String selectPassword(String username);
	public User loadUserByUsername(String username);
	public int notMemberSignup(User user);
	public int selectPhone(String phone);
	public User loadUserByPhone(String phone);
	public String selectUsername(int usercode);
}
