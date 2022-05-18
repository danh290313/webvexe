package ptithcm.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Account {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int accountId;
	
	@Column(name = "username")
	private String username;
	
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "enabled")
	private int accountState;
	
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_role")
	private Role idRole;
    
	
	
	public void addRole(Role role) {
		role.setUsername(username);
		idRole = role;
	}
	
	public Account() {
	}

	public Account(int accountId, String username, String password, int accountState) {
		this.accountId = accountId;
		this.username = username;
		this.password = password;
		this.accountState = accountState;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAccountState() {
		return accountState;
	}

	public void setAccountState(int accountState) {
		this.accountState = accountState;
	}

	public Role getIdRole() {
		return idRole;
	}

	public void setIdRole(Role idRole) {
		this.idRole = idRole;
	}

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", username=" + username + ", password=" + password
				+ ", accountState=" + accountState + "]";
	}
	
	
	
	
}
