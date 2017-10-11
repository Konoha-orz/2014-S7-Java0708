package com.demo.org.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.org.bean.Account;
import com.demo.org.bean.Role;
import com.demo.org.mapper.IAccountService;
import com.demo.org.mapper.IRoleService;
import com.demo.org.service.IAccount;

@Controller

@RequestMapping("/login")

public class LoginController {

	
	@Resource
	private IAccountService iac;

	@RequestMapping(method=RequestMethod.GET)

	public String login(HttpSession session) {
        Account user=(Account) session.getAttribute("user");
		
        if(user==null)
		   return "login";
		else
			return "webchat";

	}
	
	@RequestMapping(method=RequestMethod.POST)

	public String submit(ModelMap resultMap,HttpServletRequest request,HttpSession session) {
		
		String account=request.getParameter("account");
		String password=request.getParameter("password");
		Account loginuser=new Account();
		loginuser.setUsername(account);
		
		Account user=iac.getUser(loginuser);

		if(user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			return "webchat";
		}
		else {
			resultMap.remove("loginmessage");
			resultMap.addAttribute("loginmessage","Error!!!");
			return "login";	
		}
		
		
		

	}

}