package com.aran.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller()
@RequestMapping("")
public class LoginController {

//    @RequestMapping("/tologin")
//    public String toLogin(@ModelAttribute Admin admin){
////        UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken(admin.getUsername(),admin.getPassword());
////
////        String username=admin.getUsername();
////        String password=admin.getPassword();
////        System.out.println(username+"  和  "+password);
//        return "login";
//    }
//
//    @RequestMapping("/dologin")
//    public ModelAndView doLogin(@ModelAttribute Admin admin){
//        UsernamePasswordToken token =new UsernamePasswordToken(admin.getUsername(),admin.getPassword());
//        Subject subject = SecurityUtils.getSubject();
//        subject.login(token);
//        ModelAndView mv =new ModelAndView();
//        try {
//            subject.login(token);
//        } catch (IncorrectCredentialsException ice) {
//            // 捕获密码错误异常
//            mv.setViewName("error");
//            mv.addObject("message", "password error!");
//            return mv;
//        } catch (UnknownAccountException uae) {
//            // 捕获未知用户名异常
//            mv.setViewName("error");
//            mv.addObject("message", "username error!");
//            return mv;
//        } catch (ExcessiveAttemptsException eae) {
//            // 捕获错误登录过多的异常
//            mv.setViewName("error");
//            mv.addObject("message", "times error");
//            return mv;
//        }
//        mv.setViewName("success");
//        mv.addObject("message","success");
//        return mv;
//    }
}
