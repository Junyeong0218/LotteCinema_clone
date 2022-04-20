package com.LotteCinema.web.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventController {

	private final String HOME = "/event/home";
	private final String MOVIE = "/event/movie";
	private final String PREMIERE = "/event/premiere";
	private final String DISCOUNT = "/event/discount";
	private final String HOT = "/event/hot";
	private final String NEAR_CINEMA = "/event/near_cinema";
	private final String PAST_EVENTS = "/event/past_events";
	private final String WINNER_LIST = "/event/winner_list";
	private final String WINNER_DETAIL = "/event/winner_detail";
	
	@RequestMapping(value = HOME, method = RequestMethod.GET)
	public String home() {
		return HOME;
	}
	
	@RequestMapping(value = MOVIE, method = RequestMethod.GET)
	public String moive() {
		return MOVIE;
	}
	
	@RequestMapping(value = PREMIERE, method = RequestMethod.GET)
	public String premiere() {
		return PREMIERE;
	}
	
	@RequestMapping(value = DISCOUNT, method = RequestMethod.GET)
	public String discount() {
		return DISCOUNT;
	}
	
	@RequestMapping(value = HOT, method = RequestMethod.GET)
	public String hot() {
		return HOT;
	}
	
	@RequestMapping(value = NEAR_CINEMA, method = RequestMethod.GET)
	public String nearCinema() {
		return NEAR_CINEMA;
	}
	
	@RequestMapping(value = PAST_EVENTS, method = RequestMethod.GET)
	public String pastEvents() {
		return PAST_EVENTS;
	}
	
	@RequestMapping(value = WINNER_LIST, method = RequestMethod.GET)
	public String winnerList() {
		return WINNER_LIST;
	}
	
	@RequestMapping(value = WINNER_DETAIL, method = RequestMethod.GET)
	public String winnerDetail() {
		return WINNER_DETAIL;
	}
}
