package springbootexamples.customercatalogue.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	public static final  Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/showUserLoginForm", method = RequestMethod.GET)
    public String showUserLoginForm(Model model, String error, String logout) {
		
		logger.info("Inside /showUserLoginForm");
        if (error != null)
            model.addAttribute("invalid", "{invalid.credentials}");

        if (logout != null)
            model.addAttribute("success", "{success.logout}");

        return "user-loginform";
    }
	
	
	@GetMapping("/logout-success")
	public String showLogoutPage(Model model) {
		logger.info("Inside controller method for /logout");
		return "logout";
	}
	
	
	
	
	
}
