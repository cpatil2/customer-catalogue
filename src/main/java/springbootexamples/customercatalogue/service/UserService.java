package springbootexamples.customercatalogue.service;

import java.util.List;

import springbootexamples.customercatalogue.model.UserProfile;

public interface UserService {
	public List<UserProfile> getAllUsersProfiles();
}
