package com.aran.controller;

import com.alibaba.fastjson.JSON;
import com.aran.model.Admin;
import com.aran.model.LoginBean;
import com.aran.model.UserInformation;
import com.aran.service.AdminService;
import com.aran.service.UserInformationService;
import com.aran.util.CookieUtil;
import com.aran.util.SHAUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final static Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;
    @Autowired
    private UserInformationService userInformationService;

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
    public String doLogin(@ModelAttribute Admin admin, HttpServletRequest request, HttpServletResponse response){
        String username=admin.getUsername();
        String password=admin.getPassword();
        Admin admin1=adminService.selectUserByName(username);
        if(admin1!=null && admin1.getPassword().equals(SHAUtil.SHA256(password))){
            LoginBean loginBean=new LoginBean();
            loginBean.setUsername(username);
            loginBean.setPassword(password);
            String cookieValue=JSON.toJSONString(loginBean);
            CookieUtil.setCookie(response,cookieValue,60*60*24);
            return "admin_index";
        }
        return "login";

    }

    @RequestMapping("forms")
    public String getAllForms(Model model){
        List<UserInformation> list=  userInformationService.getAllForms();
        model.addAttribute("data",1);
        model.addAttribute("formList",list);
        return "admin_index";
    }

    @RequestMapping("users")
    public String getAllUsers(Model model){
        model.addAttribute("data",2);
        return "admin_index";
    }




}
