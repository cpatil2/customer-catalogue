package springbootexamples.customercatalogue.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import springbootexamples.customercatalogue.mdoel.UserCredentials;

public interface UserCrendentialsDao extends JpaRepository<UserCredentials, Integer>{
	UserCredentials findByUsername(String username);
}
