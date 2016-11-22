package com.cc.base.controller;

import javax.annotation.Resource;

import com.cc.library.service.BookCatagoryService;

public class BaseController {
	@Resource(name="bookCatagoryService")
	protected BookCatagoryService bookCatagoryService;

}
