package com.LotteCinema.web.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class EmailCertificate {
	private int usercode;
	private boolean member_certificate;
	private boolean privacy_essential_agreement;
	private boolean privacy_choice_agreement;
	private boolean third_party_agreement;
	private boolean third_party_choice_agreement;
	private boolean lotte_company_certificate;
	private boolean essential_agreement;
	private boolean choice_agreement;
	
	
}
