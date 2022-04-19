package com.LotteCinema.web.controller.cinemaMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CinemaMallController {
	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String cinemaMall() {
		return "CinemaMall/CinemaMall";
	}
	
	@RequestMapping(value = "/store/detail", method = RequestMethod.GET)
	public String detail() {
		return "CinemaMall/Detail";
	}
}
