package com.LotteCinema.web.entity.terms;

import lombok.ToString;

@ToString
public class PhoneTerms extends Terms {
	
	private boolean privacy_flag;
	private boolean unique_flag;
	private boolean service_flag;
	private boolean agency_flag;

	protected PhoneTerms(int id, boolean privacy_flag,
														   boolean unique_flag,
														   boolean service_flag,
														   boolean agency_flag) {
		super(1);
		this.privacy_flag = privacy_flag;
		this.unique_flag = unique_flag;
		this.service_flag = service_flag;
		this.agency_flag = agency_flag;
	}
}
