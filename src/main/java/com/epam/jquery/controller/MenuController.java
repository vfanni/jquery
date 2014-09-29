package com.epam.jquery.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(MenuController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "/main-menu/about";
	}

	@RequestMapping( value= "/{mainMenuName}", method = RequestMethod.GET)
	public String change(@PathVariable final String mainMenuName) {
		LOGGER.info("change to " + mainMenuName);
		return "/main-menu/" + mainMenuName;
	}
	
	@RequestMapping( value="/example",method = RequestMethod.GET)
	public String example(){
		return "example";
	}
}
