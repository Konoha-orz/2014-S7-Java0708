package com.demo.org.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("bc03")
public class BeanClass03 {
     
	 @Autowired
     private BeanClass02 bc2;
	 
	 public String showInfo() {
		 return bc2.getInfo();
	 }
	 
     
}
