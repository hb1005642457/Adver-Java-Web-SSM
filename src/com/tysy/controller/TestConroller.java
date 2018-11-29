package com.tysy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestConroller {
	@RequestMapping("welcome.do")
	public String testmap(){
		return "main";
	}
}	
