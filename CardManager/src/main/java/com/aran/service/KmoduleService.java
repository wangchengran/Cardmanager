package com.aran.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service("kmoduleService")
public interface KmoduleService {

    List<? extends Object> kmodule(List<? extends Object> list);
}
