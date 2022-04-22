package com.LotteCinema.web.entity.terms;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PhoneTerms extends Terms {
	
	private String telecom;
	private String phone;
	private boolean privacy_flag;
	private boolean unique_flag;
	private boolean service_flag;
	private boolean agency_flag;
	private int user_id;

	protected PhoneTerms(int id, String telecom,
														   String phone,
														   boolean privacy_flag,
														   boolean unique_flag,
														   boolean service_flag,
														   boolean agency_flag) {
		super(1);
		this.telecom = telecom;
		this.phone = phone;
		this.privacy_flag = privacy_flag;
		this.unique_flag = unique_flag;
		this.service_flag = service_flag;
		this.agency_flag = agency_flag;
	}
	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
