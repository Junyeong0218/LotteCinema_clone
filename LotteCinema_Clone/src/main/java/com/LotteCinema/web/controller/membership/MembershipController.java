package com.LotteCinema.web.controller.membership;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MembershipController {

	@RequestMapping(value ="/membership/bravoclub", method=RequestMethod.GET)
	public String bravoClub() {
		return "Membership/bravo_club";
	}
	
	@RequestMapping(value = "/membership/mateclub", method = RequestMethod.GET)
	public String mateClub() {
		return "Membership/mate_club";
	}
	
	@RequestMapping(value = "/membership/teenteenclub", method = RequestMethod.GET)
	public String teenteenClub() {
		return "Membership/teenteen_club";
	}
	
	@RequestMapping(value = "/membership/vipzone", method = RequestMethod.GET)
	public String vipZone() {
		return "Membership/vip_zone";
	}
}
