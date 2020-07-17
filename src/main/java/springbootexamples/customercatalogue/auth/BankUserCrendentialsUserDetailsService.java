package springbootexamples.customercatalogue.auth;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import springbootexamples.customercatalogue.dao.UserCrendentialsDao;
import springbootexamples.customercatalogue.mdoel.UserCredentials;

@Service
public class BankUserCrendentialsUserDetailsService implements UserDetailsService{
	private final UserCrendentialsDao userCrendentialsDao; //note final
	private final AuthGroupDao authGroupDao; //note: final

	public BankUserCrendentialsUserDetailsService(UserCrendentialsDao userCrendentialsDao, AuthGroupDao authGroupDao) {
		super();
		this.userCrendentialsDao = userCrendentialsDao;
		this.authGroupDao = authGroupDao;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		UserCredentials userCredentials = this.userCrendentialsDao.findByUsername(username);
		if(null==userCredentials) {
			throw new UsernameNotFoundException("Username not found...."+username);
		}
		List<AuthGroup> authGroupList = authGroupDao.findByUsername(username);
		return new BankUserCrentialsPrincipal(userCredentials,authGroupList);
	}
}
