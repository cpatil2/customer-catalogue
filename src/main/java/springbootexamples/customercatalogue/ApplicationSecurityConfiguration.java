package springbootexamples.customercatalogue;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;
import org.springframework.security.core.authority.mapping.SimpleAuthorityMapper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import springbootexamples.customercatalogue.auth.BankUserCrendentialsUserDetailsService;
import springbootexamples.customercatalogue.auth.MySimpleUrlAuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class ApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter{
	@Autowired
	private BankUserCrendentialsUserDetailsService userDetailsService; 
	
	// Persistent DB based authentication (advanced)	
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
		daoAuthenticationProvider.setUserDetailsService(userDetailsService);
		//daoAuthenticationProvider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		daoAuthenticationProvider.setPasswordEncoder(new BCryptPasswordEncoder(11));
		daoAuthenticationProvider.setAuthoritiesMapper(authoritiesMapper());
		return daoAuthenticationProvider;
	}
	
	@Bean
	public GrantedAuthoritiesMapper authoritiesMapper() {
		SimpleAuthorityMapper authorityMapper = new SimpleAuthorityMapper();
		authorityMapper.setConvertToUpperCase(true);
		authorityMapper.setDefaultAuthority("USER");
		return authorityMapper;
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.authenticationProvider(authenticationProvider());
		
	}
	
	
	/*@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/","/home","css/**","images/**").permitAll()
			.anyRequest().authenticated()
			.and()
			.formLogin()
			.loginPage("/showUserLoginForm").permitAll()
			.failureUrl("/showUserLoginForm?error")
			.and()
			.logout().invalidateHttpSession(true)
			.clearAuthentication(true)
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/logout-success").permitAll();
	}
	*/
	
/* Copying from some website 
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/","/home","/showUserLoginForm","/showUserSignupForm","css/**","images/**").permitAll()
			.antMatchers("/getAllUsersProfiles").hasAnyRole("ADMIN")
			.antMatchers("/addNewEmployee").hasAnyRole("ADMIN")
			.anyRequest()
		    .authenticated()
			.and()
			.formLogin()
			.defaultSuccessUrl("/showUserDashboard", true).loginPage("/showUserLoginForm").permitAll()
			.and()
			.logout().permitAll();

		
	}
	*/
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/","/home","/showUserLoginForm","/showUserSignupForm","css/**","images/**").permitAll()
			.antMatchers("/showAdminDashboard").hasAnyRole("ADMIN")
			.antMatchers("/showUserDashboard").hasAnyRole("USER")
			.antMatchers("/env").hasAnyRole("ADMIN")
			.anyRequest()
		    .authenticated()
			.and()
			.formLogin()
			.successHandler(myAuthenticationSuccessHandler())
			.loginPage("/showUserLoginForm").permitAll()
			.and()
			.logout().permitAll();

		
	}

	@Bean
	public AuthenticationSuccessHandler myAuthenticationSuccessHandler() {
		// TODO Auto-generated method stub
		return new MySimpleUrlAuthenticationSuccessHandler();
	}
	
	
	
	
	
	
	
	//Basic authentication provided by spring-core-security
	
	/*@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/","/home","css/**","images/**").permitAll()
			.anyRequest().authenticated()
			.and()
			.httpBasic();
	} */
	
	

	
	
	
//	@Bean
//	@Override
//	protected UserDetailsService userDetailsService() {
//		// TODO Auto-generated method stub
//		List<UserDetails> userDetalisList = new ArrayList<>();
//		
//		return super.userDetailsService();
//	}
}
