package com.LotteCinema.web.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.LotteCinema.web.dto.auth.NotMemberLoginDto;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SqlSession session;
	private final String NAME_SPACE = "com.LotteCinema.web.domain.user.UserRepository.";

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

	@Override
	public String selectPassword(String username) {
		return session.selectOne(NAME_SPACE + "selectPassword", username);
	}

	@Override
	public User loadUserByUsername(String username) {
		return session.selectOne(NAME_SPACE + "loadUserByUsername", username);
	}

	@Override
	public int notMemberSignup(User user) {
		return session.insert(NAME_SPACE + "notMemberSignup", user);
	}

	@Override
	public int selectPhone(String phone) {
		return session.selectOne(NAME_SPACE + "selectPhone", phone);
	}
	
	@Override
	public User loadUserByPhone(String phone) {
		return session.selectOne(NAME_SPACE + "loadUserByPhone", phone);
	}
	
	@Override
	public int isUsername(String role) {
		return session.selectOne(NAME_SPACE + "isUsername", role);
	}
	
	@Override
	public String selectUsername(String role) {
		return session.selectOne(NAME_SPACE + "selectUsername", role);
	}
}
