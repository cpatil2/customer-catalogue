package springbootexamples.customercatalogue.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springbootexamples.customercatalogue.model.UserProfile;
import springbootexamples.customercatalogue.service.UserService;

@Controller
public class UserDashboardController {
	
	public static final Logger logger = LoggerFactory.getLogger(UserDashboardController.class);
	
	@Autowired
	private UserService userService;
	
	//@Autowired
	//private UserDashboardService userDashboardService;
	
	@GetMapping("/showUserDashboard")
	public String showUserDashboard(HttpServletRequest request, Model model) {
		logger.info("ENTERED INTO USER DASHBOARD");
		
		
		//fetching all required data beforehand
		
	/*	List<UserProfile> userProfileList = userService.getAllUsersProfiles();
		logger.info("Inside getalluserprofiles : " + userProfileList.toString());

		// code for Convert UserProfile to UserProfileDto

		// code for adding userprofileDtos to model
		model.addAttribute("usersProfilesList", userProfileList);
		
		
		List<UserProfile> userProfileList2 = userService.getAllUsersProfiles();
		logger.info("Inside getalluserprofiles : " + userProfileList2.toString());

		// code for Convert UserProfile to UserProfileDto

		// code for adding userprofileDtos to model
		model.addAttribute("usersProfilesList2", userProfileList2);*/
		
		
		
		return "userdashboard";

	}
	
	

	@GetMapping("/showAdminDashboard")
	public String showAdminDashboard(HttpServletRequest request, Model model) {
		logger.info("ENTERED INTO ADMIN DASHBOARD");
		
		//fetching all required data beforehand
		
				List<UserProfile> userProfileList = userService.getAllUsersProfiles();
				logger.info("Inside getalluserprofiles : " + userProfileList.toString());
				model.addAttribute("usersProfilesList", userProfileList);
				
		return "admin-dashboard";

	}
	
}
