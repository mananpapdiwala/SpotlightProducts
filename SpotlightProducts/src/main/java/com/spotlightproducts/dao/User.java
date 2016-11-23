package com.spotlightproducts.dao;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import com.spotlightproducts.businesslibrary.LoginUser;

public class User {

	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private boolean isDeleted;
	private String userType;
	
	
	private int userId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public String registerUserDao(){
		
		LoginUser newUser = new LoginUser();
		String message  = newUser.registerUser(this);
		
		return message;
	}
	
	public boolean validateUserDao(){
		LoginUser user = new LoginUser();
		boolean isValidUser = user.validateUser(this);
		return isValidUser;
	}
	
	public String forgotPasswordDao() throws AddressException, MessagingException{
		
		LoginUser user  = new LoginUser();
		String message  = user.forgotPassword(this);
		return message;
	}
	
}
