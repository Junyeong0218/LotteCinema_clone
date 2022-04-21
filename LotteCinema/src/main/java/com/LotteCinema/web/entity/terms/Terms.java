package com.LotteCinema.web.entity.terms;

import lombok.ToString;

@ToString
public class Terms {

	private int id;
	
	protected Terms(int id) {
		this.id = id;
	}
	
	public static PhoneTerms asPhone(boolean privacy_flag,
															 	    boolean unique_flag,
																    boolean service_flag,
																    boolean agency_flag) {
		return new PhoneTerms(1, privacy_flag, unique_flag, service_flag, agency_flag);
	}
	
	public static CardTerms asCard(String card_company, int certificate_flag) {
		return new CardTerms(2, card_company, certificate_flag);
	}
	
	public static EmailTerms asEmail(boolean l_point_flag,
																 boolean privacy_necessary_flag,
																 boolean privacy_optional_flag,
																 boolean third_party_necessary_flag,
																 boolean third_party_optional_flag,
																 boolean subsidiary_flag,
																 boolean culture_necessary_flag,
																 boolean culture_optional_flag) {
		return new EmailTerms(3, l_point_flag,
														privacy_necessary_flag,
														privacy_optional_flag,
														third_party_necessary_flag,
														third_party_optional_flag,
														subsidiary_flag,
														culture_necessary_flag,
														culture_optional_flag);
	}
	
}
