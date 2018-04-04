package com.aran.service.Impl;

import com.aran.model.Product;
import com.aran.service.KmoduleService;
import org.kie.api.KieServices;
import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KmoduleServiceImpl implements KmoduleService {

    private KieServices ks = KieServices.Factory.get();
    private KieContainer kieContainer = ks.getKieClasspathContainer();

    @Override
    public List<? extends Object> kmodule(List<? extends Object> list){
        Product product= (Product) list.get(0);
        KieSession kSession = kieContainer.newKieSession("ksession-rule");
        kSession.insert(product);
        int count = kSession.fireAllRules();
        return list;
    }
}
