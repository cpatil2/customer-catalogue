package springbootexamples.customercatalogue.auth;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthGroupDao extends JpaRepository<AuthGroup, Integer> {
	List<AuthGroup> findByUsername(String username);
}
