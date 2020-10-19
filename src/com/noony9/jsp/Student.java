package com.noony9.jsp;

public class Student {
	
	private String firstName;
	private String lastName;
	private String email;
	private boolean goldCustomer;
	
	public Student(String firstName, String lastName, String email, boolean goldCustomer) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.setEmail(email);
		this.goldCustomer = goldCustomer;
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

	public boolean isGoldCustomer() {
		return goldCustomer;
	}

	public void setGoldCustomer(boolean goldCustomer) {
		this.goldCustomer = goldCustomer;
	}
	
}
