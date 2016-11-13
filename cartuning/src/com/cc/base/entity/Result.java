package com.cc.base.entity;

public class Result {
	
	public static final String SUCCESS = "success";
	
	public static final String FAILIURE = "failure";
	
	private String result;
	
	private String msg;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	

}
