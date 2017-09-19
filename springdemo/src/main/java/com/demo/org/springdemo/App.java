package com.demo.org.springdemo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.demo.org.bean.BeanClass01;
import com.demo.org.bean.BeanClass03;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext ac= new ClassPathXmlApplicationContext("config/service.xml");
        BeanClass01 bc1 = (BeanClass01) ac.getBean("bc1");
        bc1.setmString("bc1");
       
        
        
        BeanClass01 bc2=(BeanClass01) ac.getBean("fb");
        bc2.setmString("bc2");

        
        
        BeanClass01 bc3=(BeanClass01) ac.getBean("fb");
        bc3.setmString("bc3");
        
        System.out.println(bc1.getmString());
        System.out.println(bc2.getmString());
        System.out.println(bc3.getmString());
        

        BeanClass03 bcBeanClass03=(BeanClass03) ac.getBean("bc03");
        System.out.println(bcBeanClass03.showInfo());
    }
}
