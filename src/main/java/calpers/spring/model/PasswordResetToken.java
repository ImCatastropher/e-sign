package calpers.spring.model;

import java.util.Date;

public class PasswordResetToken {

	
	private static final int EXPIRATION = 60 * 24;
	private String token;
	private String email;
	private User user;
	private String expDate;
	private int enable;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public static int getExpiration() {
		return EXPIRATION;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public int getEnable() {
		return enable;
	}
	public void setEnable(int enable) {
		this.enable = enable;
	}
	
}
