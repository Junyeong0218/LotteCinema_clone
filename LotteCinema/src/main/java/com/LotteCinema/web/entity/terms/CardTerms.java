package com.LotteCinema.web.entity.terms;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class CardTerms extends Terms {
	
	private String card_company;
	private String card_number;
	private int certificate_flag;
	private int user_id;

	protected CardTerms(int id, String card_company, String card_number, int certificate_flag) {
		super(id);
		this.card_company = card_company;
		this.card_number = card_number;
		this.certificate_flag = certificate_flag;
	}
	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

}