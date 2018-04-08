package com.aran.kmodule;

import com.aran.model.Product;
import com.aran.service.KmoduleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class KmoduleTest {

    @Autowired
    private KmoduleService kmoduleService;

    @Test
    public void eeee(){
        Product product=new Product();
        List<Product> list =new ArrayList<Product>();
        product.setType(Product.GOLD);
        list.add(product);
       list= (List<Product>) kmoduleService.kmodule(list);
        System.out.println(list.get(0));
    }
}
