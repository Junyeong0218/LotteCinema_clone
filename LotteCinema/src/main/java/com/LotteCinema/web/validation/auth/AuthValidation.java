package com.LotteCinema.web.validation.auth;

import java.util.HashMap;
import java.util.Map;

public class AuthValidation {
	public Map<Boolean, String> isNull(String name, String value){
		Map<Boolean, String> result = new HashMap<Boolean, String>();
		if(value == null) {
			result.put(true, name + "�� ���� ����ֽ��ϴ�.");
			return result;
		}else if(value.replace(" ", "").equals("")) {
			result.put(true, name + "�� ���� ����ֽ��ϴ�.");
			return result;
		}
		return null;
	}
}
