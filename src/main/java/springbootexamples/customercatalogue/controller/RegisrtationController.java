package springbootexamples.customercatalogue.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springbootexamples.customercatalogue.dto.UserSignupDto;

@Controller
public class RegisrtationController {
	
	Logger logger = LoggerFactory.getLogger(RegisrtationController.class);
	
	@GetMapping("/showUserSignupForm")
	public String showUserSignupForm(Model model) {
		logger.info("trying to load user sigin up form");

		// logic to register user

		model.addAttribute("usersignupdto", new UserSignupDto());
		return "user-signupform";
	}
	
}
