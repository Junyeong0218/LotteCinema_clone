package com.LotteCinema.web.entity.terms;

import lombok.ToString;

@ToString
public class EmailTerms extends Terms {
	
	private boolean l_point_flag;
	private boolean privacy_necessary_flag;
	private boolean privacy_optional_flag;
	private boolean third_party_necessary_flag;
	private boolean third_party_optional_flag;
	private boolean subsidiary_flag;
	private boolean culture_necessary_flag;
	private boolean culture_optional_flag;

	protected EmailTerms(int id, boolean l_point_flag,
														 boolean privacy_necessary_flag,
														 boolean privacy_optional_flag,
														 boolean third_party_necessary_flag,
														 boolean third_party_optional_flag,
														 boolean subsidiary_flag,
														 boolean culture_necessary_flag,
														 boolean culture_optional_flag) {
		super(id);
		this.l_point_flag = l_point_flag;
		this.privacy_necessary_flag = privacy_necessary_flag;
		this.privacy_optional_flag = privacy_optional_flag;
		this.third_party_necessary_flag = third_party_necessary_flag;
		this.third_party_optional_flag = third_party_optional_flag;
		this.subsidiary_flag = subsidiary_flag;
		this.culture_necessary_flag = culture_necessary_flag;
		this.culture_optional_flag = culture_optional_flag;
	}

}
