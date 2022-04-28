package com.LotteCinema.web.dto.auth;

import com.LotteCinema.web.domain.user.EmailCertificate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class EmailCertificateDto {
	
	private boolean member_certificate;
	private boolean privacy_essential_agreement;
	private boolean privacy_choice_agreement;
	private boolean third_party_agreement;
	private boolean third_party_choice_agreement;
	private boolean lotte_company_certificate;
	private boolean essential_agreement;
	private boolean choice_agreement;
	
	
	
	public EmailCertificate toEntity() {
		return EmailCertificate.builder()
				.member_certificate(member_certificate)
				.privacy_essential_agreement(privacy_essential_agreement)
				.privacy_choice_agreement(privacy_choice_agreement)
				.third_party_agreement(third_party_agreement)
				.third_party_choice_agreement(third_party_choice_agreement)
				.lotte_company_certificate(lotte_company_certificate)
				.essential_agreement(essential_agreement)
				.choice_agreement(choice_agreement)
				.build();
				
	}
}
