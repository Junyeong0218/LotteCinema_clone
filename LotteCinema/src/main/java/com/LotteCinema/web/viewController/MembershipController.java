package com.LotteCinema.web.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MembershipController {

	private final String BRAVO_CLUB = "/membership/bravo_club";
	private final String MATE_CLUB = "/membership/mate_club";
	private final String TEENTEEN_CLUB = "/membership/teenteen_club";
	private final String VIP_ZONE = "/membership/vip_zone";
	
	@RequestMapping(value = BRAVO_CLUB, method = RequestMethod.GET)
	public String bravoClub() {
		return BRAVO_CLUB;
	}
	
	@RequestMapping(value = MATE_CLUB, method = RequestMethod.GET)
	public String mateClub() {
		return MATE_CLUB;
	}
	
	@RequestMapping(value = TEENTEEN_CLUB, method = RequestMethod.GET)
	public String teenteenClub() {
		return TEENTEEN_CLUB;
	}
	
	@RequestMapping(value = VIP_ZONE, method = RequestMethod.GET)
	public String vipZone() {
		return VIP_ZONE;
	}
}
