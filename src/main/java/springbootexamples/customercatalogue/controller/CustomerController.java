package springbootexamples.customercatalogue.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.method.annotation.RedirectAttributesMethodArgumentResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springbootexamples.customercatalogue.dto.UserCredentialsDto;
import springbootexamples.customercatalogue.dto.UserDto;
import springbootexamples.customercatalogue.dto.UserSignupDto;
import springbootexamples.customercatalogue.model.UserProfile;
import springbootexamples.customercatalogue.service.UserService;

@Controller
public class CustomerController {

	public static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

	@Autowired
	private UserService userService;

//	@GetMapping("/showUserLoginForm")
//	public String showUserLoginForm(Model model) {
//		logger.info("trying to load user login form");
//
//		model.addAttribute("usercrentialdto", new UserCredentialsDto());
//		return "user-loginform";
//	}

	

	@PostMapping("/validateUserCrentials")
	public String validateUserCrentials(@ModelAttribute("usercrentialdto") UserCredentialsDto userCredentials,
			RedirectAttributes redirectAttributes) {

		Boolean vaalidCrentials = true;
		if (vaalidCrentials) {
			redirectAttributes.addFlashAttribute("loginattemptmsg", "Successful Validation!");

			// code for session persistence goes here..so that every next operations will be
			// validated current user

			return "redirect:/successfulLoginAttemptAction";
		} else {
			redirectAttributes.addFlashAttribute("loginattemptmsg", "Failed Validation!");
			return "redirect:/failedLoginAttemptAction";

		}

	}

	@GetMapping("/successfulLoginAttemptAction")
	public String successfulLoginAttemptAction(HttpServletRequest request, Model model) {
		logger.info("redirected to successfulLoginAttemptAction");
		return "redirect:/showUserDashboard";

	}

	@GetMapping("/failedLoginAttemptAction")
	public String failedLoginAttemptAction(Model model) {
		logger.info("redirected to failedLoginAttemptAction");
		model.addAttribute("usercrentialdto", new UserCredentialsDto());
		return "user-loginform";
	}

	

	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute("usersignupdto") UserCredentialsDto userCredentials,
			RedirectAttributes redirectAttributes) {

		logger.info("Trying to register user");

		// code for creating user account i.e. registering user

		Boolean registerUserSatus = true;
		if (registerUserSatus) {
			redirectAttributes.addFlashAttribute("registeruserattemptmsg", "Successful Registration!");
			// I will replace following line by : return "redirect:/confirmsignupdto";
			return "redirect:/showUserLoginForm";
		} else {
			redirectAttributes.addFlashAttribute("registeruserattemptmsg", "Failed Registration!");
			return "redirect:/showUserLoginForm";

		}
	}

	@GetMapping("/registerUserAction")
	public String registerUserAction(HttpServletRequest request) {
		logger.info(request.getParameter("siginupattemptmsg"));
		return "showUserLoginForm";

	}

	@GetMapping("/getAllUsersProfiles1")
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String getAllUsersProfiles(Model model) {
		List<UserProfile> userProfileList = userService.getAllUsersProfiles();
		logger.info("Inside getalluserprofiles : " + userProfileList.toString());

		// code for Convert UserProfile to UserProfileDto

		// code for adding userprofileDtos to model
		model.addAttribute("usersProfilesList", userProfileList);

		// return view name
		return "userdashboard";

	}
	
	
	@GetMapping("/getAllUsersProfiles2")
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String getAllUsersProfiles2(Model model) {
		List<UserProfile> userProfileList = userService.getAllUsersProfiles();
		logger.info("Inside getalluserprofiles2 : " + userProfileList.toString());

		// code for Convert UserProfile to UserProfileDto

		// code for adding userprofileDtos to model
		model.addAttribute("usersProfilesList", userProfileList);

		// return view name
		return "admin-dashboard";

	}

	

}