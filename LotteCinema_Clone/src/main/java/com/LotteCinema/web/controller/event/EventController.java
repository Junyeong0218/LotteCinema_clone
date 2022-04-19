package com.LotteCinema.web.controller.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventController {
	@RequestMapping(value = "/event/discount", method = RequestMethod.GET)
	public String discount() {
		return "Event/discount";
	}
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String home() {
		return "Event/home";
	}
	
	@RequestMapping(value = "/event/hot", method = RequestMethod.GET)
	public String hot() {
		return "Event/hot";
	}
	
	@RequestMapping(value = "/event/movie", method = RequestMethod.GET)
	public String movie() {
		return "Event/movie";
	}
	
	@RequestMapping(value = "/event/nearcinema", method = RequestMethod.GET)
	public String nearCinema() {
		return "Event/nearCinema";
	}
	
	@RequestMapping(value = "/event/pastevents", method = RequestMethod.GET)
	public String pastEvents() {
		return "Event/pastEvents";
	}
	
	@RequestMapping(value = "/event/premiere", method = RequestMethod.GET)
	public String premiere() {
		return "Event/premiere";
	}
	
	@RequestMapping(value = "/event/winnerDetail", method = RequestMethod.GET)
	public String winnerDetail() {
		return "Event/winnerDetail";
	}
	
	@RequestMapping(value = "/event/winnerlist", method = RequestMethod.GET)
	public String winnerList() {
		return "Event/winnerList";
	}
}
