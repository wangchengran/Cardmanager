package com.aran.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UtilTest {

    @Test
    public void SHATest(){
        System.out.println("    ");
        System.out.println("    ");System.out.println("    ");System.out.println("    ");
        System.out.println(SHAUtil.SHA256("abc123"));
    }
}
