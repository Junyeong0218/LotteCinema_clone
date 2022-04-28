package com.LotteCinema.web.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class EmailCertificateRepositoryImpl implements EmailCertificateRepository {
	
	@Autowired
	private SqlSession session;
	private final String NAME_SPACE = "com.LotteCinema.domain.user.EmailCertificateRepository.";
	
	
	@Override
	public int insertEmailCertificate(EmailCertificate emailCertificate) {
		return session.insert(NAME_SPACE + "insetEmailCertificate", emailCertificate);
	}
}
