package com.demo.org.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/websocket")
public class WebController {
	

	
	@RequestMapping()
	public String insert() {
		
		
		return "websocket";
	}

}
