package com.cc.entity;

import com.cc.base.entity.Result;

public class User extends Result{
	
	private int id;
	
	private String username;
	
	private int password;

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

	public int getPassword() {
		return password;
	}

	public void setPassword(int password) {
		this.password = password;
	}
	
	

}
