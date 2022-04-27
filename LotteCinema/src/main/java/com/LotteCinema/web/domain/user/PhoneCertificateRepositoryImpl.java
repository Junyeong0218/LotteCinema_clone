package com.LotteCinema.web.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PhoneCertificateRepositoryImpl implements PhoneCertificateRepository {
	
	@Autowired
	private SqlSession session;
	private final String NAME_SPACE = "com.LotteCinema.domain.user.PhoneCertificateRepository.";
	
	@Override
	public int insertPhoneCertificate(PhoneCertificate phoneCertificate) {
		return session.insert(NAME_SPACE + "insertPhoneCertificate", phoneCertificate);
	}
}
