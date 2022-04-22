package com.LotteCinema.web.validation.Auth;

import java.util.HashMap;
import java.util.Map;

public class AuthValidation {
	public Map<Boolean, String> isNull(String name, String value) {
		Map<Boolean, String> result = new HashMap<Boolean, String>();
		if(value==null) {
			result.put(true, name + "의 값이 비어있습니다.");
			return result;
		}else if(value.replaceAll(" ", "").equals("")) {
			result.put(true, name + "의 값이 비어있습니다.");
			return result;
		}
		return null;
		
	}
}
