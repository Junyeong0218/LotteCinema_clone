package com.LotteCinema.web.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	private final String STORE_LIST = "/store/goods_list";
	private final String STORE_DETAIL = "/store/goods_detail";
	
	@RequestMapping(value = STORE_LIST, method = RequestMethod.GET)
	public String storeList() {
		return STORE_LIST;
	}
	
	@RequestMapping(value = STORE_DETAIL, method = RequestMethod.GET)
	public String storeDetail() {
		return STORE_DETAIL;
	}
}
