package com.aran.controller;

import com.aran.dao.UserDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class ControllerTest {

//    @Autowired
//    private UserDao dao;

    @Test
    public void testSelect(){
        long id = 1;
//        User user = dao.selectUser(id);
//        System.out.println(user.getUsername());
    }

    @Test
    public void tttt(){

        System.out.println("六六六");
    }
}
