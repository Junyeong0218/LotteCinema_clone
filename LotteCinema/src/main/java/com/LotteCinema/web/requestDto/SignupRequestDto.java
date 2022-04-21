package com.LotteCinema.web.requestDto;

import com.LotteCinema.web.entity.terms.PhoneTerms;
import com.LotteCinema.web.entity.terms.Terms;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SignupRequestDto {

	private String username;
	private String password;
	private String name;
	private String birthday;
	private int gender;
	private String telecom;
	private String first_number;
	private String middle_number;
	private String last_number;
	private String email;
	private String card_number;
	private String card_company;
	private String address;
	private Terms terms;
	private boolean email_flag;
	private boolean sms_flag;
	
	public boolean isValid() {
		if(terms instanceof PhoneTerms) {
			PhoneTerms phoneTerms = (PhoneTerms) terms;
			return !name.isEmpty() && name.length() > 1 &&
						 !birthday.isEmpty() && birthday.length() == 6 &&
						 gender > 0 && gender < 5 && 
						 !telecom.isEmpty() &&
						 !first_number.isEmpty() &&
						 !middle_number.isEmpty() && middle_number.length() > 2 &&
						 !last_number.isEmpty() && last_number.length() == 4 &&
						 phoneTerms.isPrivacy_flag() && 
						 phoneTerms.isService_flag() && 
						 phoneTerms.isAgency_flag();
		}
		return false;
	}
	
}
