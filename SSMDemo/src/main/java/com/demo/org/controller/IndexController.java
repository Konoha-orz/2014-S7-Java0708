package com.demo.org.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.org.bean.Account;
import com.demo.org.bean.Role;
import com.demo.org.mapper.IAccountService;
import com.demo.org.mapper.IRoleService;
import com.demo.org.service.IAccount;

@Controller

@RequestMapping("/index")

public class IndexController {

	@Resource
	private IAccount accountService;
	
	@Resource
	private IRoleService irs;
	
	@Resource
	private IAccountService iac;
	
	@RequestMapping()

	public String index(ModelMap resultMap) {
		
		List<Account> accountList = iac.getAll();//accountService.getCount();
            
		List<Role> roleList=irs.getAll();
		
		
		
		
		System.out.println(accountList.get(1).getUsername());	
		System.out.println(roleList.get(0).getRole_name());
		
		
		resultMap.addAttribute("account",accountList.get(2));
		resultMap.addAttribute("rolelist",roleList);
		resultMap.addAttribute("role1",roleList.get(0));
		return "index";

	}

}