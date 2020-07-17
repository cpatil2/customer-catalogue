package springbootexamples.customercatalogue.auth;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AUTH_USER_GROUP")
public class AuthGroup {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="AUTH_USER_GROUP_ID")
	private int id;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="AUTH_GROUP")
	private String authGroup;

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getAuthGroup() {
		return authGroup;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setAuthGroup(String authGroup) {
		this.authGroup = authGroup;
	}
	
	
}
