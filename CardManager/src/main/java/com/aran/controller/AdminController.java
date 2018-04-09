package com.aran.controller;

import com.aran.model.Admin;
import com.aran.service.AdminService;
import com.aran.util.SHAUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final static Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;

    @RequestMapping("index")
    public String toIndex(){
        logger.info("访问管理人员管理页面");
        return "admin_index";
    }

    @RequestMapping("login")
    public String toLogin(@ModelAttribute Admin admin){
        System.out.println("333" +
                "");
        return "login";
    }

    @RequestMapping("dologin")
    public String doLogin(@ModelAttribute Admin admin){
        String username=admin.getUsername();
        String password=admin.getPassword();
        Admin admin1=adminService.selectUserByName(username);
        if(admin1!=null && admin1.getPassword().equals(SHAUtil.SHA256(password))){
            return "admin_index";
        }
        return "login";

    }






}
