package com.LotteCinema.web.requestDto;

import com.LotteCinema.web.entity.terms.EmailTerms;
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

	private int id;
	private String username;
	private String password;
	private String name;
	private String birthday;
	private int gender;
	private String telecom;
	private String phone;
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
						 !phone.isEmpty() && phone.length() > 11 &&
						 phoneTerms.isPrivacy_flag() && 
						 phoneTerms.isUnique_flag() &&
						 phoneTerms.isService_flag() && 
						 phoneTerms.isAgency_flag();
		} else if(terms instanceof EmailTerms)
		return false;
	}
	
}
