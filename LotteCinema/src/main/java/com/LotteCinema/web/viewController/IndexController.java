package com.LotteCinema.web.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	private final String INDEX = "/index";
	
	@RequestMapping(value = INDEX, method = RequestMethod.GET)
	public String index() {
		return INDEX;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root() {
		return INDEX;
	}
}
