package springbootexamples.customercatalogue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springbootexamples.customercatalogue.dto.UserProfileDao;
import springbootexamples.customercatalogue.model.UserProfile;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserProfileDao userProfileDao;
	
	@Override
	@Transactional
	public List<UserProfile> getAllUsersProfiles() {
		// TODO Auto-generated method stub
		List<UserProfile> userProfileList = userProfileDao.findAll();
		return userProfileList;
	}
	
}
