package com.LotteCinema.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PhoneCertificate {
	private int usercode;
	private boolean privacy_agreement;
	private boolean unique_information_agreement;
	private boolean service_agreement;
	private boolean mobile_agreement;
	private String name_kor_or_eng;
	private String birth_date;
	private int gender;
	private String telecom;
	private String phone_number;
}
