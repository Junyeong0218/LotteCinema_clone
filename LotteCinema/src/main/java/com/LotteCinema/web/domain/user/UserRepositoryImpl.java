package com.LotteCinema.web.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl  implements UserRepository{
	@Autowired
	private SqlSession session;
	
	private final String NAME_SPACE = "com.LotteCinema.web.domain.user.UserRepository.";
	
	@Override
	public int checkUsername(String username) {
		return session.selectOne(NAME_SPACE + "checkUsername", username);
	}
	
	@Override
	public int signup(User user) {
		return session.insert(NAME_SPACE + "signup", user);
	}
	
	@Override
	public User getUserByUsername(String username) {
		return session.selectOne(NAME_SPACE + "getUserByUsernames", username);
	}
}
