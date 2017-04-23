package com.justDance.mvmt.model;

import java.io.Serializable;

public class Email implements Serializable{
	private String name;
	private String email;
	private String title;
	private String message;
	
	public Email(){}

	public Email(String name, String email, String title, String message) {
		super();
		this.name = name;
		this.email = email;
		this.title = title;
		
		String str = "email : " + email + "<br><br>";
		this.message = str+message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Email [name=" + name + ", email=" + email + ", title=" + title + ", message=" + message + "]";
	}
	
	
}
