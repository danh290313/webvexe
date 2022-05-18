package ptithcm.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Role {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	private String username;
	
	@Column(name = "authority")
	private String authority;

	public Role() {
		
	}

	

	public Role(String authority) {
		this.authority = authority;
	}



	@Override
	public String toString() {
		return "Role [id=" + id + ", username=" + username + ", authority=" + authority + "]";
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getAuthority() {
		return authority;
	}



	public void setAuthority(String authority) {
		this.authority = authority;
	}

	

	
}
