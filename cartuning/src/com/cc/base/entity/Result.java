package com.cc.base.entity;

public class Result {
	
	public static final String SUCCESS = "success";
	
	public static final String FAILIURE = "failure";
	
	/**
	 * 状态码
	 */
	private int code;
	
	/**
	 * 返回结果
	 */
	private String result;
	
	/**
	 * 返回消息
	 */
	private String msg;
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

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
