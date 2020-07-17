package springbootexamples.customercatalogue.mdoel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_CREDENTIALS")
public class UserCredentials {
	@Id
	@Column(name="USER_ID")
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	@Column(name="USERNAME",nullable=false, unique=true)
	String username;
	
	@Column(name="PASSWORD")
	String password;

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
