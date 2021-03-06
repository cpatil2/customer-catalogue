package springbootexamples.customercatalogue.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	public static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping(value= {"/","/home"})
	public String showHome() {
		logger.info("inside home controller");
		return "home";
	}
}
