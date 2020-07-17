package springbootexamples.customercatalogue.dto;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springbootexamples.customercatalogue.model.UserProfile;

@Repository
public interface UserProfileDao extends JpaRepository<UserProfile, Integer> {

}
