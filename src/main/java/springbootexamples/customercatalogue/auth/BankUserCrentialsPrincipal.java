package springbootexamples.customercatalogue.auth;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import springbootexamples.customercatalogue.mdoel.UserCredentials;

public class BankUserCrentialsPrincipal implements UserDetails {
	
	private UserCredentials userCredentials;
	private List<AuthGroup> authGroupList;

	public BankUserCrentialsPrincipal(UserCredentials userCredentials, List<AuthGroup> authGroupList) {
		super();
		this.userCredentials = userCredentials;
		this.authGroupList = authGroupList;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		//return Collections.singleton(new SimpleGrantedAuthority("USER"));
		if(authGroupList == null) {
			return Collections.emptySet();
		}
		Set<SimpleGrantedAuthority> grantedAuthorities = new HashSet<>();
		authGroupList.forEach(authGroup -> {
			grantedAuthorities.add(new SimpleGrantedAuthority(authGroup.getAuthGroup()));
		});
		return grantedAuthorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.userCredentials.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.userCredentials.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	

}
