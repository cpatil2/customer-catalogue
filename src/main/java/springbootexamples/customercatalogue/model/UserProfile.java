package springbootexamples.customercatalogue.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_PROFILE")
public class UserProfile {

	@Id
//	@GeneratedValue(strategy=Gen)
	@Column(name="USER_PROFILE_ID")
	int id;
	
	@Column(name="FIRST_NAME")
	String firstName;
	
	@Column(name="LAST_NAME")
	String lastName;
	
	
	@Column(name="EMAIL")
	String email;
	
	@Column(name="CONTACT_NUMBER")
	String mobile;

	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	
	
}
