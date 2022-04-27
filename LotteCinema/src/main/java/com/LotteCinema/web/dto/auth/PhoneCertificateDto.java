package com.LotteCinema.web.dto.auth;

import com.LotteCinema.domain.user.PhoneCertificate;
import com.LotteCinema.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PhoneCertificateDto {

	private boolean privacy_agreement;
	private boolean unique_information_agreement;
	private boolean service_agreement;
	private boolean mobile_agreement;
	private String name_kor_or_eng;
	private String birth_date;
	private int gender;
	private String telecom;
	private String phone_number;
	
	public PhoneCertificate toPhoneEntity() {
		return PhoneCertificate.builder()
				.privacy_agreement(privacy_agreement)
				.unique_information_agreement(unique_information_agreement)
				.service_agreement(service_agreement)
				.mobile_agreement(mobile_agreement)
				.telecom(telecom)
				.phone_number(phone_number)
				.build();
	}
	
	public User toUserEntity() {
		return User.builder()
				.name(name_kor_or_eng)
				.birth_date(birth_date)
				.gender(gender)
				.telecom(telecom)
				.phone(phone_number)
				.build();
				
	}
}
