package com.aran.controller;

import com.aran.model.Admin;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
    @RequestMapping("index")
    public String toIndex(){
        logger.info("访问管理人员管理页面");
        return "admin_index";
    }

    @RequestMapping("login")
    public String toLogin(@ModelAttribute Admin admin){
//        UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken(admin.getUsername(),admin.getPassword());
//
//        String username=admin.getUsername();
//        String password=admin.getPassword();
//        System.out.println(username+"  和  "+password);
        return "login";
    }

    @RequestMapping("dologin")
    public String doLogin(@ModelAttribute Admin admin){
        String username=admin.getUsername();
        String password=admin.getPassword();
        System.out.println(username+" and  和  "+password);
        return "admin_index";
    }






}
