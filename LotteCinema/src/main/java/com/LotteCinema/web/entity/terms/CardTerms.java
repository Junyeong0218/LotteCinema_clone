package com.LotteCinema.web.entity.terms;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class CardTerms extends Terms {
	
	private String card_company;
	private int certificate_flag;

	protected CardTerms(int id, String card_company, int certificate_flag) {
		super(id);
		this.card_company = card_company;
		this.certificate_flag = certificate_flag;
	}

}