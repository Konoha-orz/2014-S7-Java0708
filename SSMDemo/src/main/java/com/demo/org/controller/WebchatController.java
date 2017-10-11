package com.demo.org.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/webchat")
public class WebchatController {
	

	
	@RequestMapping()
	public String insert() {
		
		
		return "webchat";
	}

}
