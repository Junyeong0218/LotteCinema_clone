package com.LotteCinema.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository {
	private final String NAME_SPACE = "com.LotteCinema.domain.user.UserRepository.";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int signup(User user) {
		return session.insert(NAME_SPACE + "signup", user);
	}
	
	@Override
	public int usernameCheck(String username) {
		return session.selectOne(NAME_SPACE + "usernameCheck", username);
	}
	
	@Override
	public int emailCheck(String email) {
		return session.selectOne(NAME_SPACE + "emailCheck", email);
	}
}
